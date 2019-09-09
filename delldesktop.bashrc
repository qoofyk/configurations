#!/bin/bash

# for latex server-side compile
alias vim='vim --servername viserver0'             # use improved vi editor

source ~/configurations/hosts.conf

# comment by yuankun
#export MANPATH=/home/lifen/software/texlive17/texmf-dist/doc/man:$MANPATH
#export INFOPATH=/home/lifen/software/texlive17/texmf-dist/doc/info:$INFOPATH
#export PATH=/home/lifen/software/texlive17/bin/x86_64-linux:/home/lifen/software/tau/x86_64/bin:$PATH

# add by yuankun
export PATH=/home/fuyuan/Software/ParaView-5.5.0-Qt5-MPI-Linux-64bit/bin:$PATH
export PATH=/home/fuyuan/Software/fieldview/fv/bin:$PATH
export PATH=/home/fuyuan/Software/anaconda3/bin:$PATH
