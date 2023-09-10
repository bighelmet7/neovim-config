return {
	"tpope/vim-dadbod",
	dependencies = {
		"kristijanhusak/vim-dadbod-ui",
		"kristijanhusak/vim-dadbod-completion",
	},
	config = function()
		vim.g.db_ui_env_variable_url = "DATABASE_URL"
		vim.g.db_ui_env_variable_name = "DATABASE_NAME"
	end,
}
