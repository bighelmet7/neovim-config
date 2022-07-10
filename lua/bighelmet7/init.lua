-- TODO (bighelmet7): migrate init.vim to lua format
-- TODO (bighelmet7): it would be nice if we could move this into separate files

-- vim set
vim.g.mapleader = " "

-- global
vim.go.hlsearch = false
vim.go.hidden = true
vim.go.errorbells = false
vim.go.backup = false
vim.go.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.go.incsearch = true
vim.go.scrolloff = 10
vim.go.cmdheight = 2

-- local to window
vim.wo.number = true
vim.wo.wrap = false
vim.wo.colorcolumn = "80"
vim.wo.signcolumn = "yes"

-- local to buffer
vim.bo.swapfile = false
vim.bo.undofile = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.smartindent = true


-- Plugins
--
-- nvim-tree.lua and nvim-web-devicons
require("nvim-web-devicons").setup({ default = true })
require("nvim-tree").setup({
    git = { ignore = false },
    view = { side = "left" },
})

vim.api.nvim_set_keymap('n', '<leader>tt', ':NvimTreeToggle<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile<CR>', { noremap = true })

-- Telescope
require("telescope.builtin")
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ps', ':lua require"telescope.builtin".grep_string({ search = vim.fn.input("Grep for > ") })<CR>', { noremap = true })

-- LazyGit
vim.api.nvim_set_keymap('n', '<leader>gg', ':LazyGit<cr>', { noremap = true, silent = true })

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

-- Highlights
--
vim.cmd("colorscheme gruvbox")
vim.cmd("highlight ColorColumn ctermbg=lightgrey guibg=lightgrey")
vim.cmd("highlight Normal guibg=none")

