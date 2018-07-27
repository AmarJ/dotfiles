#!/bin/bash

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_exports ]; then
  . ~/.bash_exports
fi

if [ -f ~/.bash_options ]; then
  . ~/.bash_options
fi

if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

if [ -f ~/.inputrc ]; then
  . ~/.inputrc
fi

export TERM=xterm-256color
export DISPLAY=:0
