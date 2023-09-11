local has_dbs, dbs = pcall(require, "bighelmet7.dbs")
if has_dbs then
    vim.g.dbs = dbs
else
    print("no dbs.lua file was found, :DBUI will be using environment values")
end

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
