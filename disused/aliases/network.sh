port() { sudo lsof -n -i:$1; }

case `uname` in

  Linux)
    alias ip="LANG=C ifconfig|grep 'inet '|grep -v '127.0.0.1'|xargs|cut -d' ' -f2"
    ;;

  Darwin)
    alias ip="LANG=C ifconfig|grep inet|grep -v inet6|cut -d' ' -f2|grep -v 127.0.0.1"
    ;;

esac

# systemctl
alias stop-nginx="systemctl stop php-fpm.service; systemctl stop nginx.service"
alias start-nginx="systemctl start php-fpm.service; systemctl start nginx.service"
alias restart-nginx="systemctl restart php-fpm.service; systemctl restart nginx.service"
alias status-nginx="systemctl status php-fpm.service; systemctl status nginx.service"
