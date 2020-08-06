alias d=docker
alias dk="docker stop"
alias dls="docker ps"
alias dla="docker ps -a"
alias dlaq="docker ps -aq"
alias drm="docker rm"
# alias drma="docker rm `docker ps -qa`" キャッシュされる？
alias dlsi="docker images"
alias dlai="docker images -a"
alias drmi="docker rmi"
alias dprune="docker image prune"
alias dc="docker-compose"
alias dcb="docker-compose build"
alias dcbuild="docker-compose build"
alias dcu="docker-compose up"
alias dcup="docker-compose up"
alias dcd="docker-compose down"
alias dcdown="docker-compose down"
dbash() {
  if [ -z "$1" ]; then
    echo "USAGE: dbash <CONTAINER>"
    return
  fi
  docker exec -it $1 /bin/bash
}
