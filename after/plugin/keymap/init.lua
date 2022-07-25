local nnoremap = require("bighelmet7.keymap").nnoremap

-- nvim-tree
nnoremap("<leader>tt", ":NvimTreeToggle<CR>")
nnoremap("<leader>r", ":NvimTreeRefresh<CR>")
nnoremap("<leader>n", ":NvimTreeFindFile<CR>")

-- Telescope
nnoremap("<leader>ff", "<CMD>Telescope find_files<CR>")
nnoremap("<leader>fg", "<CMD>Telescope live_grep<CR>")
nnoremap("<leader>fb", "<CMD>Telescope buffers<CR>")
nnoremap("<leader>fh", "<CMD>Telescope help_tags<CR>")
nnoremap(
    "<leader>ps",
    function()
        require("telescope.builtin").grep_string({search = vim.fn.input("Grep For > ")})
    end
)

-- LazyGit
nnoremap("<leader>gg", ":LazyGit<CR>", {noremap = true, silent = true})
