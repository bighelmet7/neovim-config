return {
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },

	-- dap
	--
	{ "mfussenegger/nvim-dap" },

	-- formatter
	--
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("indent_blankline").setup({
				char = "┊",
				show_trailing_blankline_indent = false,
			})
		end,
	},

	-- theme
	--
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},

	-- telescope
	--
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = function()
			return vim.fn.executable("make") == 1
		end,
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
