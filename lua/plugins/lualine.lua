return {
	-- statusline
	--
	"nvim-lualine/lualine.nvim",
	dependencies = { "kyazdani42/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = "rose-pine",
			},
		})
	end,
}
