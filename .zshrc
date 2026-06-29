# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  autojump
  asdf
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# VIM
bindkey -v                         # Enable vim mode
export KEYTIMEOUT=1

# Better search and fixing some binding
bindkey '^R' history-incremental-search-backward  # keep Ctrl+R for search
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char  # Fix backspace in insert mode
bindkey '^H' backward-delete-char   # Fix Ctrl+H (alternate backspace)
bindkey '^W' backward-kill-word     # Fix Ctrl+W (delete word back)
bindkey '^U' backward-kill-line     # Fix Ctrl+U (delete to start of line)

# Cursor shape for mode indication
function zle-line-init zle-keymap-select {
  case $KEYMAP in
    vicmd) echo -ne '\e[1 q';;
    viins|main) echo -ne '\e[5 q';;
  esac
}
zle -N zle-line-init
zle -N zle-keymap-select
echo -ne '\e[5 q'

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Aliases
alias ca="conda activate"
