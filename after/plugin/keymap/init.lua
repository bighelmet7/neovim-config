local nnoremap = require("bighelmet7.keymap").nnoremap
local tnoremap = require("bighelmet7.keymap").tnoremap
local vnoremap = require("bighelmet7.keymap").vnoremap

-- convenient mappings
nnoremap("<ESC><ESC>", ":bd<CR>")
nnoremap("<ESC><ESC>q", ":bd!<CR>")
nnoremap("<C-.>", "<C-^>", { desc = "alternate files" })
nnoremap("<leader>nt", ":tabnew<CR>", { silent = true, desc = "[N]ew [T]ab" })
nnoremap("<leader>ct", ":tabclose<CR>", { silent = true, desc = "[C]lose [T]ab" })

-- local terminal
nnoremap("<leader>z", ":belowright split term://zsh <CR>", { silent = true, desc = "Close terminal" })
tnoremap("<leader><ESC>", "<C-\\><C-N>")

-- Git
nnoremap("<leader>gP", ":Git push<CR>", { desc = "[G]it [P]ush" })
nnoremap("<leader>gp", ":Git pull<CR>", { desc = "[G]it [P]ull" })
nnoremap("<leader>gg", ":Git<CR>", { desc = "[G][G]it Status" })

-- LSP
nnoremap("<leader>of", function()
	vim.diagnostic.open_float()
end, { desc = "[O]pen [F]loat" })

-- formatter
nnoremap("<leader>fw", ":FormatWrite<CR>", { desc = "[F]ormat [W]rite" })

-- oil-nvim
nnoremap("<leader>tt", ":Oil<CR>", { desc = "[T]oogle [T]ree" })

-- Telescope
-- See `:help telescope.builtin`
nnoremap("<C-t>", function()
	require("telescope.builtin").find_files({ hidden = true })
end, { desc = "[C-t] Search Files" })
nnoremap("<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })
nnoremap("<leader>/", function()
	-- You can pass additional configuration to telescope to change theme, layout, etc.
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer]" })
nnoremap("<leader>lg", function()
	require("telescope.builtin").live_grep()
end, { desc = "[L]ive [G]rep" })
nnoremap("<leader>sg", require("telescope.builtin").git_commits, { desc = "[S]earch [G]it Commit" })
nnoremap("<leader>sb", require("telescope.builtin").buffers, { desc = "[S]earch by [B]uffers" })
nnoremap("<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp Tags" })
nnoremap("<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
nnoremap("<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- trouble
nnoremap("<leader>xx", function()
	require("trouble").toggle()
end, { desc = "[X][X] Trouble Toggle" })
nnoremap("<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end, { desc = "[X][W] Trouble Workspace Diagnostics" })
nnoremap("<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end, { desc = "[X][D] Trouble Document Diagnostics" })
nnoremap("<leader>xq", function()
	require("trouble").toggle("quickfix")
end, { desc = "[X][Q] Trouble Quickfix" })
nnoremap("<leader>xl", function()
	require("trouble").toggle("loclist")
end, { desc = "[X][L] Trouble LocList" })
nnoremap("gR", function()
	require("trouble").toggle("lsp_references")
end, { desc = "[g][R] Trouble LSP References" })

-- harpoon
local harpoon = require("harpoon")

nnoremap("<leader>ha", function()
	harpoon:list():append()
end, { desc = "[H]arpoon [A]dd file" })

nnoremap("<leader>hh", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "[H]arpoon [U]I" })

nnoremap("<leader>nn", function()
	harpoon:list():next()
end, { desc = "Harpoon [N][N]ext" })

nnoremap("<leader>hn", function()
	harpoon:list():prev()
end, { desc = "[H]arpoon [N]Previous" })

-- sql
nnoremap("<leader>du", function()
	vim.cmd({
		cmd = "tabnew",
	})
	vim.cmd({
		cmd = "DBUI",
	})
end, { desc = "[D]B [U]I" })

-- markdown-preview
nnoremap("<leader>mp", function()
	vim.g.mkdp_theme = "dark"
	vim.cmd({
		cmd = "MarkdownPreview",
	})
end, { desc = "[M]arkdown [P]review" })
nnoremap("<leader>ml", function()
	vim.g.mkdp_theme = "light"
	vim.cmd({
		cmd = "MarkdownPreview",
	})
end, { desc = "[M]arkdown [P]review Light" })
nnoremap("<leader>ms", ":MarkdownPreviewStop<CR>", { desc = "[M]arkdown [S]top" })

-- dap
nnoremap("<leader>db", function()
	require("dap").toggle_breakpoint()
end)
nnoremap("<leader>dc", function()
	require("dap").continue()
end)
nnoremap("<leader>dcl", function()
	require("dap").close()
end)
nnoremap("<leader>do", function()
	require("dap").step_over()
end)
nnoremap("<leader>di", function()
	require("dap").step_into()
end)
nnoremap("<leader>dr", function()
	require("dap").repl.open()
end)
nnoremap("<leader>dt", function()
	require("dap").terminate()
end)

-- dap-ui
nnoremap("<leader>dao", function()
	require("dapui").open({})
end)
nnoremap("<leader>dac", function()
	require("dapui").close({})
end)
nnoremap("<leader>dat", function()
	require("dapui").toggle({})
end)

-- dap-python
nnoremap("<leader>dn", function()
	require("dap-python").test_method({})
end)
nnoremap("<leader>df", function()
	require("dap-python").test_class({})
end)
vnoremap("<leader>ds<ESC>", function()
	require("dap-python").debug_selection({})
end)
