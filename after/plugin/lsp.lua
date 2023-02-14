local nnoremap = require("bighelmet7.keymap").nnoremap
local inoremap = require("bighelmet7.keymap").inoremap

-- NOTE: https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion#nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local cmp = require("cmp")
cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	window = {},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		-- {name = "vsnip"} -- For vsnip users.
		{ name = "luasnip" }, -- For luasnip users.
		-- { name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
	}, {
		{ name = "buffer" },
	}),
})

local function config(_config)
	return vim.tbl_deep_extend("force", {
		-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
		capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities()),
		on_attach = function()
			nnoremap("gd", function()
				vim.lsp.buf.definition()
			end)
			nnoremap("K", function()
				vim.lsp.buf.hover()
			end)
			nnoremap("<leader>ws", function()
				vim.lsp.buf.workspace_symbol()
			end, { desc = "[W]orkspace [S]ymbol" })
			nnoremap("<leader>vd", function()
				vim.diagnostic.open_float()
			end)
			nnoremap("[d", function()
				vim.diagnostic.goto_next()
			end)
			nnoremap("]d", function()
				vim.diagnostic.goto_prev()
			end)
			nnoremap("<leader>ca", function()
				vim.lsp.buf.code_action()
			end, { desc = "[C]ode [A]ction" })
			nnoremap("<leader>rr", function()
				vim.lsp.buf.references()
			end, { desc = "[R]efe[r]ences" })
			nnoremap("<leader>vrn", function()
				vim.lsp.buf.rename()
			end)
			inoremap("<C-i>", function()
				vim.lsp.buf.signature_help()
			end)
		end,
	}, _config or {})
end

local servers = {
	pyright = config(),
	gopls = config({
		cmd = { "gopls", "serve" },
		settings = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	}),
	html = config(),
	sqls = config({
		on_attach = function(client, bufnr)
			require("sqls").on_attach(client, bufnr)
		end,
	}),
	eslint = config(),
	tsserver = config(),
	astro = config(),
	yamlls = config(),
	rust_analyzer = config({
		cmd = { "rustup", "run", "stable", "rust-analyzer" },
	}),
	lua_ls = config({
		settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					version = "LuaJIT",
				},
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { "vim" },
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
				},
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = {
					enable = false,
				},
			},
		},
	}),
}

-- Setup mason so it can manage external tooling
require("mason").setup()

-- Ensure the servers above are installed
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup(servers[server_name])
	end,
})

-- Turn on lsp status information
require("fidget").setup()
