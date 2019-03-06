#!/usr/bin/env bash

# First created: 
# Last modified: 2018 Jan 26

# Author: Feng Li
# email: fengggli@yahoo.com

# https://github.com/PreslavMihaylov/dotfiles

# make sure directory path is ok when script is started from anywhere
MYDIR="$(dirname -- "$0")"

mkdir -pv $MYDIR/tmp

if [ ! -e ~/.tmux.conf ]; then
  ln -s ${MYDIR}/tmux.conf ~/.tmux.conf
fi

if [ ! -e ~/.vimrc ]; then
  ln -s ${MYDIR}/vim/vimrc ~/.vimrc
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  echo "run PluginInstall in vim and rerun this"
  exit
fi

# install ycm?
(
YCM_ROOT="$HOME/.vim/bundle/YouCompleteMe"
if [ ! -e $YCM_ROOT/third_party/ycmd/ycm_core.so ]; then
  echo "Build nstall YouComplete Me"
  cd $YCM_ROOT
  ./install.py --clang-completer
fi
)

(
if [ ! -e ~/.local/share/fonts/PowerlineSymbols.otf ]; then
  echo "Install powerline"
  cd ${MYDIR}/tmp
  ${MYDIR}/install_powerline.sh
fi

)

echo "All complete!"
