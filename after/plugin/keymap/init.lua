local nnoremap = require("bighelmet7.keymap").nnoremap
local tnoremap = require("bighelmet7.keymap").tnoremap

-- convenient mappings
nnoremap("<ESC><ESC>", ":bd<CR>")
nnoremap("<ESC><ESC>q", ":bd!<CR>")

-- local terminal
nnoremap("<leader>z", ":belowright split term://zsh <CR>", { silent = true })
tnoremap("<leader><ESC>", "<C-\\><C-N>")

-- LSP
nnoremap("<leader>ee", function()
	vim.diagnostic.open_float()
end)

-- formatter
nnoremap("<leader>fw", ":FormatWrite<CR>", { desc = "[F]ormat [W]rite" })

-- nvim-tree
nnoremap("<leader>tt", ":NvimTreeToggle<CR>")
nnoremap("<leader>r", ":NvimTreeRefresh<CR>")
nnoremap("<leader>n", ":NvimTreeFindFile<CR>")

-- Telescope
-- See `:help telescope.builtin`
nnoremap("<C-t>", require("telescope.builtin").find_files, { desc = "[C-t] Search Files" })
nnoremap("<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })
nnoremap("<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer]" })
nnoremap("<leader>lg", require("telescope.builtin").live_grep, { desc = "[L]ive [G]rep" })
nnoremap("<leader>sg", require("telescope.builtin").git_commits, { desc = "[S]earch [G]it Commit" })
nnoremap("<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch by [B]uffers" })
nnoremap("<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp Tags" })
nnoremap("<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
nnoremap("<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- LazyGit
nnoremap("<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })

-- bufferline
nnoremap("<S-l>", ":BufferLineCycleNext<CR>")
nnoremap("<S-h>", ":BufferLineCyclePrev<CR>")
nnoremap("<S-k>", ":BufferLineCloseRight<CR>")
nnoremap("<S-p>", ":BufferLineTogglePin<CR>")
nnoremap("<S-ESC>", ":BufferLinePickClose<CR>")

-- sqls
nnoremap("<leader>ds", ":SqlsShowDatabases<CR>")
nnoremap("<leader>st", ":SqlsShowTables<CR>")
nnoremap("<leader>ss", ":SqlsShowSchemas<CR>")
nnoremap("<leader>sc", ":SqlsSwitchConnection<CR>")
nnoremap("<leader>se", ":SqlsExecuteQuery<CR>")
nnoremap("<leader>sev", ":SqlsExecuteQueryVertical<CR>")

-- markdown-preview
nnoremap("<leader>mp", ":MarkdownPreview<CR>")
nnoremap("<leader>ms", ":MarkdownPreviewStop<CR>")

-- dap
--nnoremap("<leader>db", function()
--	require("dap").toggle_breakpoint()
--end)
--nnoremap("<leader>dc", function()
--	require("dap").continue()
--end)
--nnoremap("<leader>dcl", function()
--	require("dap").close()
--end)
--nnoremap("<leader>do", function()
--	require("dap").step_over()
--end)
--nnoremap("<leader>di", function()
--	require("dap").step_into()
--end)
--nnoremap("<leader>dr", function()
--	require("dap").repl.open()
--end)
--nnoremap("<leader>dt", function()
--	require("dap").terminate()
--end)
--
---- dap-ui
--nnoremap("<leader>dao", function()
--	require("dapui").open({})
--end)
--nnoremap("<leader>dac", function()
--	require("dapui").close({})
--end)
--nnoremap("<leader>dat", function()
--	require("dapui").toggle({})
--end)
--
---- dap-python
--nnoremap("<leader>dn", function()
--	require("dap-python").test_method({})
--end)
--nnoremap("<leader>df", function()
--	require("dap-python").test_class({})
--end)
--vnoremap("<leader>ds<ESC>", function()
--	require("dap-python").debug_selection({})
--end)
