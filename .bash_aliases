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

alias k="kubectl"
alias la="ls -a"
alias ll="ls -lh"
alias c="clear"
alias l="ls"
alias ng="/usr/local/lib/node_modules/@angular/cli/bin/ng"
alias gs="git status"
alias ga='git add .'
alias gc='git commit --amend'
alias gp='git push origin head'
alias gd='ga && gc && gp'
alias ir='pip install -r requirements.txt'
alias sf='screenfetch'
alias python=python3
alias gab='gatsby build'
alias gas='gatsby serve'
alias ys='yarn start'
alias run='python manage.py run'
alias sarah='echo i love you'
alias setenv='export $(xargs < .env)'
alias setenvlocal='export $(xargs < .env.local)'
alias fdeploy="npm run build && firebase deploy --only functions"

#Reload .profile
alias reload="source ~/.profile"
