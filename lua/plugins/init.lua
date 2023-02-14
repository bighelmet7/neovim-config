return {
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

	-- sqls
	--
	{ "nanotee/sqls.nvim", lazy = true },

	-- marksdown preview
	--
	{
		"iamcco/markdown-preview.nvim",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		lazy = true,
	},

	{ "dstein64/vim-startuptime", lazy = true },
}
