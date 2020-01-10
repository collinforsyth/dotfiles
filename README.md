### Dotfiles

Some of my useful dotfiles

Mostly just used to remember how to set up an easy environment for development on OS X.

Some requirements:
- `zsh`
- `tmux`
- `Karabiner Elements`
- `neovim`

# Installing:
Install homebrew first
Install Karabiner Elements

First need to install zsh/tmux
```bash
brew install zsh tmux reattah-to-user-namespace
```

Run:
```bash
# if ~/.zshrc exists, remove it
rm ~/.zshrc
git init
git remote add origin https://github.com/collinforsyth/dotfiles.git
git fetch
git reset --hard origin/master  # Required when the versioned files existed in path before "git init" of this repo.
```

```bash
# Install .oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install python3 neovim fzf autojump
# Update fzf installation
/usr/local/opt/fzf/install --all
# Install vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Need to pip install neovim for some reason <- look into this
pip3 install neovim
vim +PlugInstall +qall
```

```bash
# Set up development environment
brew install go protobuf protoc-gen-go
```
