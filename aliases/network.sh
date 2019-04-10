port() { sudo lsof -n -i:$1; }

case `uname` in

  Linux)
    alias ip="LANG=C ifconfig|grep 'inet '|grep -v '127.0.0.1'|xargs|cut -d' ' -f2"
    ;;

  Darwin)
    alias ip="LANG=C ifconfig|grep inet|grep -v inet6|cut -d' ' -f2|grep -v 127.0.0.1"
    ;;

esac

