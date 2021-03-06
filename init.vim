set exrc

" variables
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
let plugged = '~/.vim/plugged'

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

" lua config
lua require("bighelmet7")

