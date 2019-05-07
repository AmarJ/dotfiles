#!/bin/bash

#Better list command
LS_COMMON="--group-directories-first"
LS_COMMON="$LS_COMMON --color=auto"
LS_COMMON="$LS_COMMON -I NTUSER.DAT\* -I ntuser.dat\* -I ntuser.ini\* -I desktop.ini\*" 

function get_branch() {
      git branch --no-color | grep -E '^\*' | awk '{print $2}' \
        || echo "default_value"
      # or
      # git symbolic-ref --short -q HEAD || echo "default_value";
}

alias la="ls -a"
alias ll="ls -lh"
alias c="clear"
alias l="ls"
alias ng="/usr/local/lib/node_modules/@angular/cli/bin/ng"
alias gs="git status"
alias gc='git commit --amend'
alias r="reload"
alias gc="git commit --amend"
alias gp="git push origin head"

#Reload .profile
alias reload="source ~/.profile"
