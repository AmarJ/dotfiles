#!/bin/bash

#Better list command
LS_COMMON="--group-directories-first"
LS_COMMON="$LS_COMMON --color=auto"
LS_COMMON="$LS_COMMON -I NTUSER.DAT\* -I ntuser.dat\* -I ntuser.ini\* -I desktop.ini\*" 

alias la="ls -aoh"
alias ll="ls -a"
alias c="clear"

#Reload .profile
alias reload="source ~/.profile"
