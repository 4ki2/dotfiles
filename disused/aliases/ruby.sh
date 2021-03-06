if [ $RBENV_ROOT ]; then

  # rbenv
  if [ "$CURRENT_OS" != "CentOS" ]; then
    eval "$(rbenv init -)"
  fi
  source $RBENV_ROOT/completions/rbenv.zsh
  alias rv="ruby -v|cut -d' ' -f2"
  rch() { rbenv local $1; rbenv rehash; . ~/.aliases}
  alias rls="rbenv versions"
  alias rbupdate="cd $RBENV_ROOT; git pull origin master; cd plugins/ruby-build; git pull origin master; cd; rbenv rehash"
  alias rbremote="echo '  remote'; rbenv install -l | grep '^  2\|^  1.9' | grep -v '\-dev\|\-preview\|\-rc\|1.9.1\|1.9.2'"
  alias rbrehash="rbenv rehash"

  # gem
  alias gems="echo `rbenv which ruby|sed -e 's/bin\/ruby//'`lib/ruby/gems/`rv|cut -d'p' -f1|sed "s/\([0-9]\.[0-9]\.\).*/\10/"`/gems"
  alias gemupdate="gem cleanup; gem update --system; rbenv rehash; gem update; rbenv rehash; gem pristine --all; rbenv rehash"
  alias gemenv="gem env"
  alias cdgems="cd `gems`"
  gemlist() { gem list ^$1\$ --remote --all; }
  alias gempurge="gem uninstall -aIx"

  # rails
  alias development="unset RAILS_ENV"
  alias r=rails
  alias rc="rails c"
  alias rs="rails s -b 0.0.0.0"
  alias bf="bundle --frozen"
  alias bu="bundle update"
  alias be="bundle exec"
  alias beb="bundle exec bundle"
  alias resetdb="bundle exec rake db:drop; bundle exec rake db:create; bundle exec rake db:migrate"
  alias precompile="bundle exec rake assets:precompile"
  alias railsclear="bundle exec rake assets:clean; bundle exec rake tmp:clear; bundle exec rake log:clear"
  alias sidekiq="bundle exec sidekiq -C config/sidekiq.yml"

  # unicorn controller for rails development
  unicorn-railsdev() {
    pid=tmp/pids/unicorn.pid
    cnf=config/unicorn_development.rb
    if [ ! -f $cnf ]; then
      echo "No file. $cnf"
      if [ -f $pid ]; then
        echo "But, unicorn running..."
        echo "unicorn_rails kill"
        kill `cat $pid`
      fi
      return
    fi
    if [ -f $pid ]; then
      case $1 in
        stop)
          echo "unicorn_rails $1"
          kill `cat $pid`
          rm -f $pid
          ;;
        restart)
          echo "unicorn_rails $1"
          kill -s USR2 `cat $pid`
          ;;
        *)
          echo "nothing to do"
      esac
    else
      case $1 in
        start|restart)
          echo "unicorn_rails $1"
          rm -f log/*.log
          if [ -f .envrc ]; then
            source .envrc
          fi
          bundle exec unicorn_rails -c $cnf -D
          ;;
        *)
          echo "nothing to do"
      esac
    fi
  }

  alias unicorn-pids="ps -ef|grep [u]nicorn|tr -s ' '|cut -d' ' -f2|xargs echo|sed 's/\s\+/,/g'"
  pidstat-unicorn(){
    pidstat -p `unicorn-pids` $*
  }
  alias pidstat-unicorn-mem="pidstat-unicorn -r"

  # mailcatcher
  alias mailcatcher="mailcatcher --http-ip 10.0.2.15"
fi
