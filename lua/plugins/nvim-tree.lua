return {
	"nvim-tree/nvim-tree.lua",
	tag = "nightly", -- optional, updated every week. (see issue #1193)
	config = function()
		require("nvim-web-devicons").setup({ default = true })
		require("nvim-tree").setup({
			git = { ignore = false },
			view = { side = "left" },
			renderer = {
				icons = {
					glyphs = {
						git = {
							untracked = "🤷",
							unstaged = "👀",
						},
					},
				},
			},
		})
	end,
}
