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

## neovim plugin dependencies

- brew install lazygit
- brew install ripgrep
- brew install fd
- brew install jq
- pip3 install pynvim
- npm install -g neovim
- packer

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## create .env file

```
python3 -m venv ~/.config/nvim .env
cd ~/.config/nvim
. .env/bin/activate
pip install pynvim
```

## neoformat dependencies

- cargo install stylua (https://github.com/JohnnyMorganz/StyLua)
- npm install -g prettier

## DAP dependencies

:warning: use ~/.config/nvim/.env virtualenv

- python: pip install debugpy
- rust: brew install llvm

## LSP dependencies

- go install golang.org/x/tools/gopls@latest
- go install github.com/lighttiger2505/sqls@latest
- npm i -g vscode-langservers-extracted
- npm install -g typescript typescript-language-server
- npm i -g pyright
- npm i -g yaml-language-server
- brew install lua-language-server
- brew install deno
- npm install -g @astrojs/language-server
- rustup component add rust-analyzer && ln -s $(rustup which --toolchain stable
  rust-analyzer) ~/.cargo/bin/rust-analyzer

# LSP config

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
