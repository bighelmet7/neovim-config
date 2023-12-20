return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	requires = { { "nvim-lua/plenary.nvim" } },
	config = function()
        require("harpoon").setup()
		require("telescope").load_extension("harpoon")
	end,
}
