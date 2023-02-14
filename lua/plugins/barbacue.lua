return {
	"utilyre/barbecue.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"SmiteshP/nvim-navic",
	},
	config = function()
		require("barbecue").setup()
	end,
}
