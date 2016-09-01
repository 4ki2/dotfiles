if [ "$CURRENT_OS" = "CentOS" ]; then

  # package manager
  alias yumupdate="sudo yum update"
  alias yumclean="sudo yum clean all"
  alias yumsearch="sudo yum search"
  alias yuminstall="sudo yum install"
  alias yumalready="sudo yum list"

  # perl
  alias pv="perl -v|grep -o '(v[0-9]\+.[0-9]\+.[0-9]\+)'|grep -o '[0-9.]\+'"
  fp(){ find `echo \`pmdirs\`` -iname $1* } # require pmtools
  alias findperl=fp
  alias clean_perl_test="find . -iname debug.txt -o -iname save.txt|xargs rm -rv"

  # tokyocabinet
  alias tclist="tcrmgr list $TOKYOCABINET_HOST:$TOKYOCABINET_PORT"
  alias tcpurge="tcrmgr vanish $TOKYOCABINET_HOST:$TOKYOCABINET_PORT"
  alias tcget="tcrmgr get $TOKYOCABINET_HOST:$TOKYOCABINET_PORT"
  alias tcset="tcrmgr put $TOKYOCABINET_HOST:$TOKYOCABINET_PORT"
  alias tcdel="tcrmgr out $TOKYOCABINET_HOST:$TOKYOCABINET_PORT"

  # daemon control
  alias redisflush="redis-cli flushall; sudo /etc/init.d/redis restart"

fi
