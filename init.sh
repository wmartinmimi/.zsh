XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}

zstyle ':completion:*' completer _extensions _complete _approximate _history
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu no
zstyle ':completion:*:*:*:*:descriptions' format '-- %d --'
zstyle ':completion:*:descriptions' format '[%d]'
zstyle ':completion:*:*:*:*:corrections' format '!- %d (errors: %e) -!'
zstyle ':completion:*:messages' format '-- %d --'
zstyle ':completion:*:warnings' format '-- no matches found --'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' complete-options true
# zstyle ':autocomplete:*:*' list-lines 16

# zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept --bind=enter:accept --height=16
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group 'left' 'right'

autoload -U compinit; compinit
source $XDG_CONFIG_HOME/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh

source $XDG_CONFIG_HOME/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $XDG_CONFIG_HOME/zsh/plugins/zsh-colored-man-pages/colored-man-pages.plugin.zsh

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

