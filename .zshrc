# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/collinforsyth/.oh-my-zsh"

ZSH_THEME="refined"

source ~/.zsh/*.zsh

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
	autojump
	git
    kube-ps1
    golang
	fzf
	vi-mode
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Aliases
alias k=kubectl
alias ktx=kubectx
alias kns=kubens
alias python=python3
alias pip=pip3

alias vim=nvim
# Sometimes we want to open an entire folder in vim.
vimd() {
    nvim $(find $1 -type f)
}

# dotfile management
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Gostuff
export GOPATH=$HOME
export GOBIN=$HOME/bin
export GO11MODULE=on

# fzf :hearteyes:
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Ripgrep don't search in vendor :O
RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

# Ripgrep functionality
# --files: List files that would be searched but do not search
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND="rg --files --ignore --hidden --follow -g '!{.git,node_modules,vendor}/*'"

# Git stuff
alias gl='git log --graph --decorate --pretty=oneline --abbrev-commit'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/Users/collinforsyth/git-fuzzy/bin:$PATH"
