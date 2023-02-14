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

## sqls

- sqls config: https://github.com/lighttiger2505/sqls#db-configuration

you need to create a config.yml with all of the databases connections, the
config should be in ~/.config/sqls/config.yml, you can follow the example of the
above link.

# links

- https://github.com/romkatv/powerlevel10k#oh-my-zsh
- https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks
- https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
- https://github.com/ryanoasis/vim-devicons/wiki/Installation
- https://github.com/kyazdani42/nvim-tree.lua
- https://github.com/junegunn/vim-plug
- https://devhints.io/lua
- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/
