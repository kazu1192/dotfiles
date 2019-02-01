#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# ALIASES
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cl='clear'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

PS1='[\u@\h \W]\$ '
