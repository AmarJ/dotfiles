#!/bin/bash

#Better list command
LS_COMMON="--group-directories-first"
LS_COMMON="$LS_COMMON --color=auto"
LS_COMMON="$LS_COMMON -I NTUSER.DAT\* -I ntuser.dat\* -I ntuser.ini\* -I desktop.ini\*" 

alias ls="command ls $LS_COMMON"
alias la="ls -aoh"

#Reload .profile
alias reload="source ~/.profile"
alias ls='ls --color=never'
