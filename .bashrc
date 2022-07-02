#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias b='xbacklight -set 0.06'
alias k='setxkbmap -layout ch'
alias v='vim'
alias lf='lfrun'
alias m='make && sudo make clean install'
alias ip='ip -c'
#alias ls='ls --color=auto'
alias ls='lsd --icon-theme unicode'
alias grep='grep --color'

#PS1='[\u@\h \W]\$ '
PS1='\033[1;37m\w > \e[m' ##red

#PS1='\w > '
#PS1='\w  '
#PS1='\e[0;31m\w  \e[m' ##red
#PS1='\e[0;32m\w  \e[m' ##green
#PS1='\e[0;33m\w  \e[m' ##yellow
#PS1='\e[0;34m\w  \e[m' ##blue
#PS1='\e[0;35m\w  \e[m' ##purple
#PS1='\e[0;36m\w  \e[m' ##cyan

#PS1='\e[1;34m\w  \e[m' ##blue
#PS1='\e[1;35m\w  \e[m' ##purple
#PS1='\e[1;37m\w > \e[m' ##purple

export EDITOR='vim'
export VISUAL='vim'
set -o vi
