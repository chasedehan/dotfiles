ZSH_THEME="robbyrussell"


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
  git
  autojump
  asdf
)

source $ZSH/oh-my-zsh.sh

# User configuration
bindkey -v '^?' backward-delete-char
bindkey "^R" history-incremental-search-backward
