-- mapleader
vim.g.mapleader = " "

-- https://prettier.io/docs/en/vim.html#neoformathttpsgithubcomsbdchdneoformat
vim.g.neoformat_try_node_exe = 1
vim.g.neoformat_try_formatprg = 1
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
