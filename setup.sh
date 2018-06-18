#!/bin/bash
############################
# setup.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="vimrc vim zshrc tmux.conf tmuxline.theme"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  if [ -f ~/.$file ] 
  then
    echo "Moving .$file from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
  fi
  echo "Creating symlink to $file in home directory."
  ln -s $dir/.$file ~/.$file
done

# Install Vundle, a vim plugin manager, if it's not already installed.
if [ ! -d $dir/.vim/bundle/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git $dir/.vim/bundle/Vundle.vim
fi
