ZSH_THEME="robbyrussell"


# Which plugins would you like to load?
plugins=(
  git
  autojump
  asdf
)

source $ZSH/oh-my-zsh.sh

# User configuration
bindkey -v '^?' backward-delete-char
bindkey "^R" history-incremental-search-backward

# Aliases
alias ca="conda activate"
