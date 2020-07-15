bindkey -e # Use emacs keybindings even if our EDITOR is set to vi
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順("\e[Z"でも動作する)

# bindkey "^W" forward-word
# bindkey "^B" backward-word
# bindkey "^P" history-beginning-search-backward-end
# bindkey "^N" history-beginning-search-forward-end

autoload -Uz zkbd
bindkey "^[[2~" overwrite-mode
bindkey "^[[3~" delete-char
bindkey "^[[H"  beginning-of-line
bindkey "^[[F"  end-of-line
### page up/down: move cursor up and down by many lines
### in the "Windows Terminal", use with ctrl+shift
bindkey "^[[5~" beginning-of-buffer-or-history
bindkey "^[[6~" end-of-buffer-or-history

