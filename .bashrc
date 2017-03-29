#
# ~/.bashrc
#

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

# some useful command
alias iuvpn="sudo openconnect --cafile /etc/ssl/certs/ca-certificates.crt --juniper https://vpn.iu.edu"
alias mydesktop="rdesktop -g 1440x900 -P -z -x l -r sound:off  in-csci-27sl112.ads.iu.edu"
alias pegasus="ssh lifen@pegasus.cs.iupui.edu"
alias Webserver="ssh lifeng@fengggli.com"
alias tesla="ssh lifen@tesla.cs.iupui.edu"
alias bigred="ssh lifen@bigred2.uits.iu.edu"
alias xsede="ssh -l fengggli login.xsede.org"
alias comet="ssh rlu@comet.sdsc.xsede.org"
alias karst="ssh lifen@karst.uits.iu.edu"
alias bridges="ssh fli5@bridges.psc.xsede.org"

alias setdpi="xrandr --output eDP-1 --auto --scale 0.8x0.8 --output HDMI-1 --auto --scale 1x1 --left-of eDP-1"
alias setnodpi="xrandr --output eDP-1 --auto --scale 1x1 --output HDMI-1 --auto --scale 1x1 --left-of eDP-1"
alias start_pvserver_reversed="pvserver -rc --client-host=140.182.0.241"


# this is the node for DS labs
alias ds01="ssh lifen@10.234.136.55"
alias ds02="ssh lifen@10.234.136.56"
alias ds03="ssh lifen@10.234.136.57"
alias ds04="ssh lifen@10.234.136.58"
alias ds05="ssh lifen@10.234.136.59"
alias ds06="ssh lifen@10.234.136.60"

# start tv server
# http://localhost:9981/
alias tvserver="systemctl start tvheadend"


# close firefox
alias kff="pkill -f firefox"

echo "USER                 RSS      PROCS" ;echo "-------------------- -------- -----" ;ps hax -o rss,user | awk '{rss[$2]+=$1;procs[$2]+=1;}END{for(user in rss) printf "%-20s %8.0f %5.0f\n", user, rss[user]/1024, procs[user];}' | sort -rnk2
# PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$' 
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



export PROMPT_COMMAND='echo -ne "\033]0; $HOSTNAME: $PWD\007" '


# added by Anaconda3 4.2.0 installer
export PATH=/home/lifeng/tools/ParaView-4.3.1-Linux-64bit/bin:/home/lifeng/tools/phantomjs-2.1.1-linux-x86_64/bin:/home/lifeng/tools/anaconda/bin:~/bin:$PATH

#export PYTHONPATH=$PYTHONPATH:/usr/lib/paraview-5.1/site-packages/ #fixes "no module named paraview"
#export PYTHONPATH=/home/lifeng/tools/Paraview-5.2/lib:$PYTHONPATH
#export PYTHONPATH=$PYTHONPATH:/usr/lib/paraview-5.1/ #fixes "ImportError: No module named libvtkCommonPython"
