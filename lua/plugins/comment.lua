return {
    -- Read :h comment.config
	"numToStr/Comment.nvim",
	config = function()
		require("Comment").setup()
	end,
}
