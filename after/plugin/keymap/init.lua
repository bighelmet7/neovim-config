local nnoremap = require("bighelmet7.keymap").nnoremap
local tnoremap = require("bighelmet7.keymap").tnoremap

-- local terminal
nnoremap("<leader>z", ":belowright split term://zsh <CR>", {silent = true})
tnoremap("<leader><ESC>", "<C-\\><C-N>")

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

-- bufferline
nnoremap("<S-l>", ":BufferLineCycleNext<CR>")
nnoremap("<S-h>", ":BufferLineCyclePrev<CR>")
nnoremap("<S-ESC>", ":BufferLinePickClose<CR>")

-- sqls
nnoremap("<leader>sd", ":SqlsShowDatabases<CR>")
nnoremap("<leader>st", ":SqlsShowTables<CR>")
nnoremap("<leader>ss", ":SqlsShowSchemas<CR>")
nnoremap("<leader>sc", ":SqlsSwitchConnection<CR>")
nnoremap("<leader>se", ":SqlsExecuteQuery<CR>")
nnoremap("<leader>sev", ":SqlsExecuteQueryVertical<CR>")
