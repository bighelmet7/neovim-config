local dbs = require("bighelmet7.dbs")
vim.g.dbs = dbs

vim.api.nvim_create_autocmd("FileType", {
	desc = "Auto complete for SQL",
	pattern = "sql,mysql,plsql",
	callback = function()
		require("cmp").setup.buffer({
			sources = {
				{ name = "vim-dadbod-completion" },
			},
		})
	end,
})
