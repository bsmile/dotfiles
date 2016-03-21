#! /bin/bash

EXPORT_PATH=./export

file_link () {
  FULLPATH=$1
  LINK_FILE=$2
  if [ -r $FULLPATH ]; then
    ln -sf $FULLPATH ~/$LINK_FILE
  fi
}

file_link ~/dotfiles/.vim .vim
file_link ~/dotfiles/.vimrc .vimrc
file_link ~/dotfiles/.bash_profile .bash_profile

file_link ~/dotfiles/.zprezto/runcoms/zlogin .zlogin
file_link ~/dotfiles/.zprezto/runcoms/zlogout .zlogout
file_link ~/dotfiles/.zprezto/runcoms/zpreztorc .zpreztorc
file_link ~/dotfiles/.zprezto/runcoms/zprofile .zprofile
file_link ~/dotfiles/.zprezto/runcoms/zshenv .zshenv
file_link ~/dotfiles/.zprezto/runcoms/zshrc .zshrc
