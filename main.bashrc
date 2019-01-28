#!/bin/bash
#debug
#set -x

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto' # use colors
alias la='ls -Fa'          # list all files
alias ll='ls -Fls'         # long listing format

alias rm='rm -i'           # prompt before overwrite (but dangerous, see rm for a better approach)
alias cp='cp -i'           # prompt before overwrite (same general problem as the rm)
alias mv='mv -i'           # prompt before overwrite (same general problem as the rm)

alias less='less -r'

alias grep='grep --color' # let grep show number and color

# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$' 

source $HOME/configurations/colormap.sh

# STY: see the ENVIRONMENT section screen man page
PS1="$HC$FGRN\u@\h$FYEL(`echo $STY|awk -F. '{print $2}'`:${WINDOW})$RS:$FCYN\w$RS\$"

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

if [ x`hostname | cut -c 1-2` == x"br" ]; then
    source  $HOME/configurations/bridges.bashrc
    echo "----[$MYPREFIX]----: now using PSC Bridges"
elif [ x`hostname | cut -c 8-16` == x"stampede2" ]; then
    source  $HOME/configurations/stampede2.bashrc
    echo "----[$MYPREFIX]----: now using TACC Stampede2"

elif [ x`hostname | cut -c 1-5` == x"comet" ]; then
    source  $HOME/configurations/comet.bashrc
    echo "----[$MYPREFIX]----: now using  Comet"

elif [ x`hostname | cut -c 1-4` == x"asus" ]; then
    source  $HOME/configurations/laptop.bashrc
    echo "----[$MYPREFIX]----: now using my asus arch"

elif [ x`hostname | cut -c 2-3` == x"1wk" ]; then
    source  $HOME/configurations/comanche_host.bashrc
    echo "----[$MYPREFIX]----: now using comanche"
elif [ x`hostname | cut -c 1-7` == x"in-csci" ]; then
    source  $HOME/configurations/delldesktop.bashrc
    echo "----[$MYPREFIX]----: now using dell desktop"

else
    echo "machine name not detected!, add in $HOME/configurations"

    # servers
    source ~/configurations/hosts.conf
    echo "host file added"
fi


# this messes up with dbus
#CONDA_PATH=$HOME/software/anaconda3
#if [ -d $CONDA_PATH ]; then
    #export PATH=$CONDA_PATH/bin:$PATH
    #python --version
#fi
alias python-anaconda='/home/lifeng/software/anaconda3/bin/python'

export PATH=$HOME/configurations/bin:$HOME/.local/bin:$PATH
