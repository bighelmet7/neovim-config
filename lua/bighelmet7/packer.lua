-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- lsp
	-- NOTE: nvim-lspconfig doesn't configure keymap by default:
	-- https://github.com/neovim/nvim-lspconfig#suggested-configuration
	use("neovim/nvim-lspconfig")
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
		},
	})
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("j-hui/fidget.nvim")

	-- dap
	--
	use({
		"mfussenegger/nvim-dap",
		ensure_dependencies = true,
		requires = {
			"rcarriga/nvim-dap-ui",
			"leoluz/nvim-dap-go",
			"mfussenegger/nvim-dap-python",
		},
	})

	-- formatter
	--
	use("sbdchd/neoformat")
	use("lukas-reineke/indent-blankline.nvim")

	-- theme
	--
	use({
		"rose-pine/neovim",
		as = "rose-pine",
	})

	-- nvim-tree
	--
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- telescope
	--
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
	})

	-- lazygit
	--
	use("kdheepak/lazygit.nvim")
	use("f-person/git-blame.nvim")

	-- treesitter
	-- treesitter vs LSP: https://github.com/nvim-treesitter/nvim-treesitter/issues/484#issuecomment-694388223
	--
	use({
		-- it will fail the first time
		-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
		"nvim-treesitter/nvim-treesitter",
		run = function()
			pcall(require("nvim-treesitter.install").update({ with_sync = true }))
		end,
	})

	-- statusline
	--
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- bufferline (mainly for tabs and groups)
	--
	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

	-- sqls
	--
	use("nanotee/sqls.nvim")

	-- marksdown preview
	--
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	-- tmux
	--
	use({
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup()
		end,
	})

	-- barbacue
	--
	use({
		"utilyre/barbecue.nvim",
		tag = "*",
		requires = {
			"neovim/nvim-lspconfig",
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		after = "nvim-web-devicons", -- keep this if you're using NvChad
		config = function()
			require("barbecue").setup()
		end,
	})

	-- aux
	--
	use("dstein64/vim-startuptime")
end)
