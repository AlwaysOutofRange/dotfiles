# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "agkozak/zsh-z"

# aliases
alias pvenv="poetry shell"

# exports
export EDITOR=hx
export PATH=$PATH:/home/nico/go/bin

# Load and initialise completion system
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

eval "$(starship init zsh)"
