local nnoremap = require("bighelmet7.keymap").nnoremap
local tnoremap = require("bighelmet7.keymap").tnoremap

-- convenient mappings
nnoremap("<ESC><ESC>", ":bd<CR>")

-- local terminal
nnoremap("<leader>z", ":belowright split term://zsh <CR>", {silent = true})
tnoremap("<leader><ESC>", "<C-\\><C-N>")

-- LSP
nnoremap(
    "<leader>ee",
    function()
        vim.diagnostic.open_float()
    end
)

-- nvim-tree
nnoremap("<leader>tt", ":NvimTreeToggle<CR>")
nnoremap("<leader>r", ":NvimTreeRefresh<CR>")
nnoremap("<leader>n", ":NvimTreeFindFile<CR>")

-- Telescope
nnoremap("<leader>tk", "<CMD>Telescope keymaps<CR>")
nnoremap("<leader>tf", "<CMD>Telescope find_files<CR>")
nnoremap("<leader>tg", "<CMD>Telescope live_grep<CR>")
nnoremap("<leader>tb", "<CMD>Telescope buffers<CR>")
nnoremap("<leader>th", "<CMD>Telescope help_tags<CR>")
nnoremap(
    "<leader>ts",
    function()
        require("telescope.builtin").grep_string({search = vim.fn.input("Grep For > ")})
    end
)

-- LazyGit
nnoremap("<leader>gg", ":LazyGit<CR>", {noremap = true, silent = true})

-- bufferline
nnoremap("<S-l>", ":BufferLineCycleNext<CR>")
nnoremap("<S-h>", ":BufferLineCyclePrev<CR>")
nnoremap("<S-k>", ":BufferLineCloseRight<CR>")
nnoremap("<S-p>", ":BufferLineTogglePin<CR>")
nnoremap("<S-ESC>", ":BufferLinePickClose<CR>")

-- sqls
nnoremap("<leader>sd", ":SqlsShowDatabases<CR>")
nnoremap("<leader>st", ":SqlsShowTables<CR>")
nnoremap("<leader>ss", ":SqlsShowSchemas<CR>")
nnoremap("<leader>sc", ":SqlsSwitchConnection<CR>")
nnoremap("<leader>se", ":SqlsExecuteQuery<CR>")
nnoremap("<leader>sev", ":SqlsExecuteQueryVertical<CR>")

-- dap
nnoremap(
    "<leader>db",
    function()
        require("dap").toggle_breakpoint()
    end
)
nnoremap(
    "<leader>dc",
    function()
        require("dap").continue()
    end
)
nnoremap(
    "<leader>dcl",
    function()
        require("dap").close()
    end
)
nnoremap(
    "<leader>do",
    function()
        require("dap").step_over()
    end
)
nnoremap(
    "<leader>di",
    function()
        require("dap").step_into()
    end
)
nnoremap(
    "<leader>dr",
    function()
        require("dap").repl.open()
    end
)
nnoremap(
    "<leader>dt",
    function()
        require("dap").terminate()
    end
)
