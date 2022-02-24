alias d=docker
alias dbuild="docker build"
alias drun="docker run -it"
alias dp="docker pull"
alias dk="docker stop"
alias dstop="docker stop"
alias dls="docker ps"
alias dla="docker ps -a"
alias dlaq="docker ps -aq"
alias dcp="docker cp"
alias dcm="docker commit"
alias drm="docker rm"
# alias drma="docker rm `docker ps -qa`" キャッシュされる？
alias dlsi="docker images"
alias dlai="docker images -a"
alias drmi="docker rmi"
alias dprune="docker image prune"
alias dc="docker-compose"
alias dck="docker-compose stop"
alias dcstop="docker-compose stop"
alias dcb="docker-compose build"
alias dcbuild="docker-compose build"
alias dcu="docker-compose up"
alias dcup="docker-compose up"
alias dcr="docker-compose up --force-recreate"
alias dcrecreate="docker-compose up --force-recreate"
alias dcd="docker-compose down"
alias dcdown="docker-compose down"
dbash() {
  if [ -z "$1" ]; then
    echo "USAGE: dbash <CONTAINER>"
    return
  fi
  docker exec -it $1 /bin/bash
}
dash() {
  if [ -z "$1" ]; then
    echo "USAGE: dbash <CONTAINER>"
    return
  fi
  docker exec -it $1 /bin/ash
}
