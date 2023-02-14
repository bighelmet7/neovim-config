-- mapleader
vim.g.mapleader = " "

-- https://prettier.io/docs/en/vim.html#neoformathttpsgithubcomsbdchdneoformat
vim.g.neoformat_try_node_exe = 1
vim.g.neoformat_try_formatprg = 1
vim.g.python_host_skip_check = 1
vim.g.python3_host_skip_check = 1
vim.g.python3_host_prog = os.getenv("HOME") .. "/.config/nvim/.env/bin/python"

-- disabled providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- NOTE: really handy when debugging
-- vim.g.neoformat_verbose = 1

-- global options
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.incsearch = true
vim.opt.scrolloff = 10
vim.opt.cmdheight = 1
vim.opt.termguicolors = true -- for bufferline
vim.opt.completeopt = "menu,menuone,noselect"

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- local to buffer
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- local to window
vim.opt.nu = true
vim.opt.wrap = false
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
vim.opt.relativenumber = true
vim.opt.foldenable = false -- disable automatic folding when launching nvim
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- others
vim.g.markdown_fenced_languages = {
	"ts=typescript",
}
