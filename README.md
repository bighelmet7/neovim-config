# Terminal setup

- oh-my-zsh!

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- fonts

```
# not mandatory but it makes a huge difference to have some custom fonts
# you can use: https://www.nerdfonts.com/font-downloads

brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
# brew install --cask font-<font_name>-font
```

- macos terminal

```
# only on macos using their default terminal
# Terminal > Preferences
# click on change font and select your nerdfont/font-<FONT>
```

# Dependencies

## terminal

- oh-my-zsh!
- font-hack-nerd-font

## create .env file

```
python3 -m venv ~/.config/nvim .env
cd ~/.config/nvim
. .env/bin/activate
pip install pynvim
```

## neovim plugin dependencies

- brew install lazygit
- brew install ripgrep
- brew install fd
- brew install jq
- pip3 install pynvim
- npm install -g neovim


# Mason
## format.nvim dependencies
Go to ./lua/plugins/formatter.lua and install all the listed packages with `:Mason`

## DAP dependencies
Go to ./after/plugin/dap.lua and install all the listed packages with `:Mason`
> :warning: C/C++/Rust: brew install llvm

## LSP dependencies
Go to ./after/plugin/lsp.lua and install all the listed packages with `:Mason`

## SQL

run:
```bash
export DATABASE_NAME="dev"
export DATABASE_URL="postgres://user:password@127.0.0.1:15432/db"
```
you need to create/overwrite the export variables before connecting.

> TODO: add a way to read an env file an load a list of DB connections.

# links

- https://github.com/romkatv/powerlevel10k#oh-my-zsh
- https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks
- https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
- https://github.com/ryanoasis/vim-devicons/wiki/Installation
- https://github.com/kyazdani42/nvim-tree.lua
- https://github.com/junegunn/vim-plug
- https://devhints.io/lua
- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
