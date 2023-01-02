vim.opt.signcolumn = "yes" -- Reserve space for diagnostic icons

require("mason").setup()

local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
    "sumneko_lua",
    "rust_analyzer",
    "pyright",
    "gopls",
    "tsserver",
    "astro",
    "dockerls",
    "html",
    "eslint",
    "sqls",
    "yamlls",
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
