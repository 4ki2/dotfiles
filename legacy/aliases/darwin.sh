if [ "$CURRENT_OS" = "Darwin" ]; then

  alias macos=sw_vers

  alias dns_clear_cache="sudo killall -HUP mDNSResponder"
  alias dns_clear_cache2="dscacheutil -flushcache"

  alias mysqld-start="mysql.server start"
  alias mysqld-stop="mysql.server stop"
  alias mysqld-restart="mysql.server restart"
  alias mysqld-reload="mysql.server reload"
  alias mysqld-freload="mysql.server force-reload"
  alias mysqld-status="mysql.server status"

  alias nginx-start="sudo nginx"
  alias nginx-stop="sudo nginx -s stop"
  alias nginx-quit="sudo nginx -s quit"
  alias nginx-reload="sudo nginx -s reload"
  alias nginx-reopen="sudo nginx -s reopen"

fi
