return {
	-- it may fail the first time
	-- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
	"nvim-treesitter/nvim-treesitter",
	build = function()
		pcall(require("nvim-treesitter.install").update({ with_sync = true }))
	end,

	config = function()
		require("telescope.builtin")
	end,
}
