# monitor
alias df="df -h"
alias du="du -h"
alias du1="du --max-depth=1"
alias time-mem="/usr/bin/time -f '%Us %M KB'"

# mount
resize_ram() {
  if [ -z "$1" ]; then
    echo "USAGE: resize_ram <SIZE>"
    return
  fi
  mount -o remount,size=$1 /dev/shm # 90%とか
  df -h |grep /dev/shm
}

