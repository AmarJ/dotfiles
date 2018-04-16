#!/bin/bash

files=".vimrc .bash_aliases .bash_exports .bash_options .bash_prompt .bashrc .gitignore .gitconfig .gitattributes .hushlogin .inputrc .profile"

echo "Backing up files"
mkdir -p ~/dotfiles_old

cd ~/dotfiles

for file in $files; do
  if [ -f ~/$file ]; then
    mv ~/$file ~/dotfiles_old
    echo "$file backed up"
  fi
done

for file in $files; do
  ln -s ~/dotfiles/$file ~/$file
  echo "Linking $file"
done

echo "Adding color schemes to /.vim/colors"
mkdir ~/.vim
mkdir ~/.vim/colors
cp colors/* ~/.vim/colors/.

source ~/.profile
