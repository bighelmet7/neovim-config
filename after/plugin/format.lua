-- Format after :w
local fmt = vim.api.nvim_create_augroup("fmt", { clear = true })
vim.api.nvim_create_autocmd("BufWritePost", {
        command = "LspZeroFormat",
    group = fmt,
})
