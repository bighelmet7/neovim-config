require("bighelmet7.set")

-- Plugins
--
-- nvim-tree.lua and nvim-web-devicons
require("nvim-web-devicons").setup({ default = true })
require("nvim-tree").setup({
    git = { ignore = false },
    view = { side = "left" },
})

-- Telescope
require("telescope.builtin")

-- Lualine
require('lualine').setup({
    options = {
        theme = "tokyonight"
    }
})

-- CoC
--
vim.g.coc_global_extensions = {
    "coc-snippets",
    "coc-pyright",
    "coc-go",
    "coc-spell-checker",
    "coc-rls",
    "coc-json",
    "coc-html-css-support",
    "coc-prettier",
}

-- coc-go
vim.api.nvim_command("autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')")

