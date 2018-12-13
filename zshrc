stty -ixon -ixoff # C-s C-q
cdpath=(.. ~)

# environments
typeset -U PATH
. ~/.env
eval "$(direnv hook zsh)"

. ~/.zsh/keybind.zsh
. ~/.zsh/options.zsh
. ~/.zsh/color.zsh
. ~/.zsh/history.zsh
. ~/.zsh/completion.zsh
. ~/.zsh/prompt.zsh

# aliases
for a in `find ~/.aliases/ -type f`; do
  . $a
done

# secrets
if [ -f ~/.secrets ]; then
  . ~/.secrets
fi

# hub (github's git wrapper)
if [ ! -z `command -v hub` ]; then
  eval "$(hub alias -s)"
fi

# tmux (ssh to Linux from MacOS)
if [ "$OSTYPE" == "linux-gnu" ]; then
  if [ $SHLVL = 1 ]; then
    tmux attach || tmux -f $HOME/.tmux.conf
  fi
fi

# root/bin
PATH=/root/bin:${PATH}

