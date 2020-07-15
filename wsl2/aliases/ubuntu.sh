# if [ "$CURRENT_OS" = "Ubuntu" ]; then
#
#   # package manager
#   alias aptsafe="sudo aptitude update; sudo aptitude safe-upgrade"
  alias aptupdate="sudo apt-get upgrade; sudo apt-get update"
  alias aptpurge="sudo apt-get autoremove; sudo apt-get clean"
  # alias aptsearch="aptitude search"
  # alias aptinstall="sudo aptitude install"
  # aptalready() { aptitude search $1 | grep ^i }
  #
  # # system
  # alias halt="sudo shutdown -h now"
  # alias reboot="sudo shutdown -r now"
  #
  # # daemon control
  # alias redisflush="redis-cli flushall; sudo service redis-server restart"
  alias servstat="service --status-all"
#   alias pgc="psql -U postgres"
#
# fi
