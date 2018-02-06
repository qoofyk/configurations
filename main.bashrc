#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto' # use colors
alias la='ls -Fa'          # list all files
alias ll='ls -Fls'         # long listing format

alias rm='rm -i'           # prompt before overwrite (but dangerous, see rm for a better approach)
alias cp='cp -i'           # prompt before overwrite (same general problem as the rm)
alias mv='mv -i'           # prompt before overwrite (same general problem as the rm)

alias vi='vim'             # use improved vi editor
alias grep='grep --color' # let grep show number and color

# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$' 

source colormap.sh


PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]' 

# colorful manpages
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

MYPREFIX="fengggli's auto bash setup"

export PROMPT_COMMAND='echo -ne "\033]0; $HOSTNAME: $PWD\007" '

if [ `hostname | cut -c 1-2` == "br" ]; then
    source  $HOME/configurations/bridges.bashrc
    echo "----[$MYPREFIX]----: now using PSC Bridges"
elif [ `hostname | cut -c 8-16` == "stampede2" ]; then
    source  $HOME/configurations/stampede2.bashrc
    echo "----[$MYPREFIX]----: now using TACC Stampede2"

elif [ `hostname | cut -c 1-5` == "comet" ]; then
    source  $HOME/configurations/comet.bashrc
    echo "----[$MYPREFIX]----: now using  Comet"

elif [ `hostname | cut -c 1-4` == "asus" ]; then
    source  $HOME/configurations/laptop.bashrc
    echo "----[$MYPREFIX]----: now using my asus arch"

elif [ `hostname | cut -c 1-3` == "1wk" ]; then
    source  $HOME/configurations/delldesktop.bashrc
    echo "----[$MYPREFIX]----: now using dell desktop"
elif [ `hostname | cut -c 1-7` == "in-csci" ]; then
    source  $HOME/configurations/delldesktop.bashrc
    echo "----[$MYPREFIX]----: now using dell desktop"
elif [ `hostname | cut -c 6-13` == "OptiPlex" ]; then
    source  $HOME/configurations/delldesktop.bashrc
    echo "----[$MYPREFIX]----: now using dell desktop"

else
    echo "machine name not detected!, add in $HOME/configurations"

fi






