return {
	-- lsp
	-- NOTE: nvim-lspconfig doesn't configure keymap by default:
	-- https://github.com/neovim/nvim-lspconfig#suggested-configuration
	"neovim/nvim-lspconfig",
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",

		-- Useful status updates for LSP
		{ "j-hui/fidget.nvim", tag = "legacy" },

		-- Additional lua configuration, makes nvim stuff amazing
		"folke/neodev.nvim",
	},
}
