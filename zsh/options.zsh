setopt no_beep      # ビープ音
setopt auto_cd      # ディレクトリ名の入力のみで移動

setopt auto_pushd   # cd時にディレクトリスタックにpushdする
# setopt correct      # コマンドのスペルを訂正する
setopt magic_equal_subst # =以降も補完する(--prefix=/usrなど)
setopt notify       # バックグラウンドジョブの状態変化を即時報告
setopt equals       # =commandを`which command`と同じ処理
setopt nonomatch    # ファイルグロブは無効にする

setopt auto_list   # 補完候補を一覧で表示(d)
setopt auto_menu   # 補完キー連打で補完候補を順に表示(d)
setopt list_packed # 補完候補をできるだけ詰めて表示
setopt list_types  # 補完候補にファイルの種類も表示

setopt auto_param_slash
setopt noautoremoveslash

setopt bang_hist          # !を使ったヒストリ展開を行う(d)
setopt extended_history   # ヒストリに実行時間も保存する
setopt hist_ignore_dups   # 直前と同じコマンドはヒストリに追加しない
# setopt share_history      # 他のシェルのヒストリをリアルタイムで共有する
# setopt hist_reduce_blanks # 余分なスペースを削除してヒストリに保存する

setopt prompt_subst # プロンプト定義内で変数置換やコマンド置換を扱う

