return {
	"akinsho/bufferline.nvim",
	tag = "v3.0.0",
	config = function()
		require("bufferline").setup({
			options = {
				offsets = {
					{ filetype = "NvimTree", text = "File Explorer", padding = 1 },
				},
				max_name_length = 14,
				max_prefix_length = 13,
				tab_size = 20,
				separator_style = "thin",
			},
		})
	end,
}
