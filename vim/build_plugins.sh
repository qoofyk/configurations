#!/usr/bin/env bash

# First created: 2018 Jul 20
# Last modified: 2018 Jul 20

# Author: Feng Li
# email: fengggli@yahoo.com

dpkg -l |grep -q  ruby-dev
if [ 0 -ne $? ]; then
  echo " install ruby-dev!"
  exit 
fi

( echo "Install Command-T"
# install ruby-dev
cd $HOME/.vim/bundle/command-t
rake make 
)

( echo "Build nstall YouComplete Me"
cd $HOME/.vim/bundle/YouCompleteMe
./install.py --clang-completer
)


