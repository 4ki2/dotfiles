# environments
if [ -f ~/.env ]; then
  . ~/.env
fi

# aliases
if [ -f ~/.aliases ]; then
  . ~/.aliases
fi

# secrets
if [ -f ~/.secrets ]; then
  . ~/.secrets
fi

# for Ctrl-Shift
stty -ixon -ixoff

# Set up the prompt
autoload -Uz promptinit
promptinit
prompt adam1

# RPROMPT="%{${fg[blue]}%}%{${reset_color}%}"

autoload -Uz vcs_info
setopt prompt_subst # プロンプト定義内で変数置換やコマンド置換を扱う
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT=$RPROMPT'${vcs_info_msg_0_}'

autoload -U colors; colors

bindkey -e # Use emacs keybindings even if our EDITOR is set to vi

setopt no_beep      # ビープ音
setopt auto_cd      # ディレクトリ名の入力のみで移動
cdpath=(.. ~ ~/src)
setopt auto_pushd   # cd時にディレクトリスタックにpushdする
# setopt correct      # コマンドのスペルを訂正する
setopt magic_equal_subst # =以降も補完する(--prefix=/usrなど)
setopt notify       # バックグラウンドジョブの状態変化を即時報告
setopt equals       # =commandを`which command`と同じ処理
setopt nonomatch    # ファイルグロブは無効にする

# Keep 10000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt bang_hist          # !を使ったヒストリ展開を行う(d)
setopt extended_history   # ヒストリに実行時間も保存する
setopt hist_ignore_dups   # 直前と同じコマンドはヒストリに追加しない
# setopt share_history      # 他のシェルのヒストリをリアルタイムで共有する
# setopt hist_reduce_blanks # 余分なスペースを削除してヒストリに保存する
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
# bindkey "^P" history-beginning-search-backward-end
# bindkey "^N" history-beginning-search-forward-end

# Use modern completion system
autoload -Uz compinit
compinit
setopt auto_list   # 補完候補を一覧で表示(d)
setopt auto_menu   # 補完キー連打で補完候補を順に表示(d)
setopt list_packed # 補完候補をできるだけ詰めて表示
setopt list_types  # 補完候補にファイルの種類も表示
bindkey "^[[Z" reverse-menu-complete  # Shift-Tabで補完候補を逆順("\e[Z"でも動作する)
#bindkey "^W" forward-word
#bindkey "^B" backward-word
setopt auto_param_slash
setopt noautoremoveslash
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# direnv
if [ -d ~/.envs ]; then
  eval "$(direnv hook zsh)"
fi

# tmux
if [ $SHLVL = 1 ]; then
  tmux attach || tmux -f $HOME/.tmux.conf
fi
