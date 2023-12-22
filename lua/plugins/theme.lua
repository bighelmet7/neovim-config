return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				cmp = true,
				dap = true,
				barbecue = {
					dim_dirname = true, -- directory name is dimmed by default
					bold_basename = true,
					dim_context = false,
					alt_background = false,
				},
				gitsigns = true,
				harpoon = true,
				nvimtree = true,
				treesitter = true,
				fidget = true,
				telescope = {
					enabled = true,
				},
			},
		})
	end,
}
