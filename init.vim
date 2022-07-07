set exrc
set nu
set nohlsearch
set encoding=utf-8
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=10
set colorcolumn=80
set signcolumn=yes
set cmdheight=2

" variables
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let plugged = '~/.vim/plugged'
let mapleader = " "

"  automatic vim-plug installation
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins
call plug#begin(plugged)

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" grep
Plug 'BurntSushi/ripgrep'

" Tree
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Gruvbox
Plug 'gruvbox-community/gruvbox'

" Code autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python
Plug 'davidhalter/jedi-vim', { 'for': 'python' }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Git
Plug 'kdheepak/lazygit.nvim'
Plug 'f-person/git-blame.nvim'

call plug#end()

"  highlights
colorscheme gruvbox
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
hi Normal guibg=none

" Plugins and remaps

" CoC extensions
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pyright',
  \ 'coc-go',
  \ 'coc-spell-checker',
  \ 'coc-rls',
  \ 'coc-json',
  \ 'coc-html-css-support',
  \ 'coc-prettier',
  \ ]

" coc-go
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

" lua config
lua require("bighelmet7")

