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
			nnoremap("<leader>vws", function()
				vim.lsp.buf.workspace_symbol()
			end)
			nnoremap("<leader>vd", function()
				vim.diagnostic.open_float()
			end)
			nnoremap("[d", function()
				vim.diagnostic.goto_next()
			end)
			nnoremap("]d", function()
				vim.diagnostic.goto_prev()
			end)
			nnoremap("<leader>vca", function()
				vim.lsp.buf.code_action()
			end)
			nnoremap("<leader>vrr", function()
				vim.lsp.buf.references()
			end)
			nnoremap("<leader>vrn", function()
				vim.lsp.buf.rename()
			end)
			inoremap("<C-h>", function()
				vim.lsp.buf.signature_help()
			end)
		end,
	}, _config or {})
end

-- Python
require("lspconfig").pyright.setup(config())

-- Go
require("lspconfig").gopls.setup(config({
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
}))

-- HTML
require("lspconfig").html.setup(config())

-- SQL
require("lspconfig").sqls.setup(config({
	on_attach = function(client, bufnr)
		require("sqls").on_attach(client, bufnr)
	end,
}))

-- Javascript
require("lspconfig").eslint.setup(config())

-- Typescript
require("lspconfig").tsserver.setup(config())

-- Deno
require("lspconfig").denols.setup(config())

-- AstroJS
require("lspconfig").astro.setup(config())

-- yaml
-- NOTE: for more information:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#yamlls
require("lspconfig").yamlls.setup(config())

-- rust (rust-tools provides more functionalities than the std nvim-lsp)
require("lspconfig").rust_analyzer.setup(config({
	cmd = { "rustup", "run", "stable", "rust-analyzer" },
}))

-- lua
require("lspconfig").sumneko_lua.setup(config({
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
}))
