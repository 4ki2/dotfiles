# dotfiles

## Requirement

- zsh
- golang
- python3-pip
- direnv

and so on.

### example for ubuntu

```shell
sudo apt install build-essential zsh golang python3-pip liblua5.3-dev ncurses-dev direnv
pip3 install msgpack pynvim
```

## Installation

1. Check out

```shell
git clone git@github.com:4ki2/dotfiles.git
cd dotfiles
git submodule init
git submodule update
```

1. build hub

```shell
cd submodules/hub
sudo ./script/build -o /usr/local/bin/hub
ln -s $PWD/etc/hub.zsh_completion ~/.zsh/completions/_hub
```

1. Choose distribution

now, only `wsl2`(ubuntu20)

1. Setup

```shell
./setup.sh
```
