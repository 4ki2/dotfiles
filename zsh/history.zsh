HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

