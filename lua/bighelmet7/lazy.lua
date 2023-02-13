local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- lsp
	-- NOTE: nvim-lspconfig doesn't configure keymap by default:
	-- https://github.com/neovim/nvim-lspconfig#suggested-configuration
	{ "neovim/nvim-lspconfig" },
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
	},
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "j-hui/fidget.nvim" },

	-- dap
	--
	{ "mfussenegger/nvim-dap" },
	{ "leoluz/nvim-dap-go" },
	{ "mfussenegger/nvim-dap-python" },
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
	},
	{
		"folke/neodev.nvim",
		dependencies = { "rcarriga/nvim-dap-ui" },
		config = function()
			require("neodev").setup({
				library = {
					plugins = { "nvim-dap-ui", types = true },
				},
			})
		end,
	},

	-- formatter
	--
	{ "sbdchd/neoformat" },
	{ "lukas-reineke/indent-blankline.nvim" },

	-- theme
	--
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},

	-- telescope
	--
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
	},

	-- lazygit
	--
	{ "kdheepak/lazygit.nvim" },
	{ "f-person/git-blame.nvim" },

	-- treesitter
	-- treesitter vs LSP: https://github.com/nvim-treesitter/nvim-treesitter/issues/484#issuecomment-694388223
	--
	{
		-- it will fail the first time
		-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
		"nvim-treesitter/nvim-treesitter",
		build = function()
			pcall(require("nvim-treesitter.install").update({ with_sync = true }))
		end,
	},

	-- statusline
	--
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "kyazdani42/nvim-web-devicons" },
	},

	-- bufferline (mainly for tabs and groups)
	--
	{ "akinsho/bufferline.nvim", tag = "v2.*" },

	-- sqls
	--
	{ "nanotee/sqls.nvim" },

	-- marksdown preview
	--
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- tmux
	--
	{
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup()
		end,
	},

	-- barbacue
	--
	{
		"utilyre/barbecue.nvim",
		tag = "*",
		dependencies = {
			"neovim/nvim-lspconfig",
			"SmiteshP/nvim-navic",
		},
		config = function()
			require("barbecue").setup()
		end,
	},

	-- tree
	--
	{
		"nvim-tree/nvim-tree.lua",
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	},
	{ "dstein64/vim-startuptime", lazy = true },
}

require("lazy").setup(plugins)
