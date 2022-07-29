-- run all formatters until one runs successfully
vim.g.neoformat_run_all_formatters = 1

-- Format after :w
local fmt = vim.api.nvim_create_augroup("fmt", {clear = true})
vim.api.nvim_create_autocmd(
    "BufWritePre",
    -- NOTE: https://github.com/sbdchd/neoformat/issues/134#issuecomment-1034726786
    {
        command = "try | undojoin | Neoformat | catch /E790/ | Neoformat | endtry",
        group = fmt
    }
)
