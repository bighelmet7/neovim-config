-- run all formatters until one runs successfully
vim.g.neoformat_run_all_formatters = 1

-- Format after :w
vim.api.nvim_command("autocmd BufWritePre * undojoin | Neoformat")
