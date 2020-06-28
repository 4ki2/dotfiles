bindkey -e # Use emacs keybindings even if our EDITOR is set to vi

bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順("\e[Z"でも動作する)
#bindkey "^W" forward-word
#bindkey "^B" backward-word
# bindkey "^P" history-beginning-search-backward-end
# bindkey "^N" history-beginning-search-forward-end

