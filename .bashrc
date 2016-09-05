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
alias grep='grep -n --color' # let grep show number and color

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



export PATH=~/bin:$PATH
export PROMPT_COMMAND='echo -ne "\033]0; $HOSTNAME: $PWD\007" '
