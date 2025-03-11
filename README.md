# dotfiles
## Summary
- zsh
- golang (ppa)
- neovim (asdf)
- nodejs (asdf)
- direnv

and so on.
## Setup
now, only use on `wsl2` (ubuntu)
1. install base
    ```shell
    sudo add-apt-repository ppa:longsleep/golang-backports
    sudo apt update
    sudo apt upgrade
    sudo apt install build-essential zsh direnv golang language-pack-ja
    ```
1. install asdf
    ```shell
    go install github.com/asdf-vm/asdf/cmd/asdf@latest
    ```
1. checkout
    ```shell
    git clone git@github.com:4ki2/dotfiles.git
    cd dotfiles
    git submodule init
    git submodule update
    ```
1. run shell
    ```shell
    ./setup.sh
    ```
1. install ex (after relogin)
    ```shell
    asdf plugin add neovim
    asdf install neovim stable
    asdf set neovim stable
    ```
    ```shell
    asdf plugin add nodejs
    asdf cmd nodejs update-nodebuild
    asdf install nodejs `asdf cmd nodejs resolve lts`
    asdf set nodejs `asdf cmd nodejs resolve lts`
    ```
