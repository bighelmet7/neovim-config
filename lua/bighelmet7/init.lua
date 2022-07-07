-- TODO (bighelmet7): migrate init.vim to lua format
-- TODO (bighelmet7): it would be nice if we could move this into separate files

-- nvim-tree.lua and nvim-web-devicons
require("nvim-web-devicons").setup{ default = true }
require("nvim-tree").setup({
    git = { ignore = false },
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

