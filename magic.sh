# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc bash_profile vimrc vim"    # list of files/folders to symlink in homedir

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
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

xcode-select --install
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
\curl -sSL https://get.rvm.io | bash -s stable
gem install rails
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
gem install bundler
