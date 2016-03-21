#! /bin/bash

EXPORT_PATH=./export

file_copy () {
  FULLPATH=$1
  FILE=`basename $1`
  mkdir -p $EXPORT_PATH
  if [ -r $FULLPATH ]; then
    cp -rp $FULLPATH $EXPORT_PATH/$FILE
  fi
}


file_copy ~/.vim
file_copy ~/.vimrc
file_copy ~/.bash_profile

file_copy ~/.zprezto/runcoms/zlogin 
file_copy ~/.zprezto/runcoms/zlogout 
file_copy ~/.zprezto/runcoms/zpreztorc
file_copy ~/.zprezto/runcoms/zprofile
file_copy ~/.zprezto/runcoms/zshenv
file_copy ~/.zprezto/runcoms/zshrc
