# Terminal setup
- ohmyzsh!
```bash
# make sure you are running a supported zsh version
# then install ohmyzsh

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
- powerlevel10k
```
# then we need powerlevel10k for ohmyzsh, which will handle
# install pk10

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# don't forget to update your .zshrc

ZSH_THEME="powerlevel10k/powerlevel10k"
```
- macos terminal
```
# only on macos using their default terminal
# Terminal > Preferences
# click on change font and select your nerdfont/font-<FONT>
```

# Dependencies
- ohmyzsh!
- font-hack-nerd-font
- powerlevel10k (ohmyzsh installation)
- fig.io
- brew install lazygit
- brew install ripgrep
- pip3 install pynvim
- pip3 install jedi
- npm install -g neovim
- RUST only: rustup component add rls rust-analysis rust-src

# links
- https://github.com/romkatv/powerlevel10k#oh-my-zsh
- https://github.com/Homebrew/homebrew-cask-fonts/tree/master/Casks
- https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
- https://github.com/ryanoasis/vim-devicons/wiki/Installation
- https://github.com/kyazdani42/nvim-tree.lua
- https://github.com/junegunn/vim-plug
- https://devhints.io/lua
- https://vonheikemen.github.io/devlog/tools/configuring-neovim-using-lua/

