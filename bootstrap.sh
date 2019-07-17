#! /bin/sh

set -e

BOOTSTRAP_DIR=~/git/bootstrap
GIT_REPO=https://github.com/Blizarre/bootstrap.git

# Do not use sudo if the script is run as root, as sudo might not be available
SUDO=""
if [ "$(id -u)" -ne 0 ]; then
    SUDO="sudo -H"
fi

mkdir -p ~/bin

$SUDO apt-get -y update
$SUDO apt-get -y upgrade
$SUDO apt-get -y install python3 python3-pip curl vim git tmux htop
$SUDO apt-get -y autoremove

if dpkg -s shellcheck; then
    $SUDO apt-get -y install shellcheck
fi

mkdir -p $BOOTSTRAP_DIR
git clone $GIT_REPO $BOOTSTRAP_DIR

# Configuration files
ln -s $BOOTSTRAP_DIR/vimrc ~/.vimrc
ln -s $BOOTSTRAP_DIR/vim ~/.vim
ln -s $BOOTSTRAP_DIR/tmux.conf ~/.tmux.conf

mkdir -p ~/.config
ln -s $BOOTSTRAP_DIR/flake8 ~/.config/flake8
echo "source $BOOTSTRAP_DIR/bash_rc" >> ~/.bashrc
git config --global interactive.singleKey yes

# Python pip and syntax checker
$SUDO pip3 install flake8

# Vim plugins + syntax checker
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone git://github.com/tpope/vim-surround.git ~/.vim/bundle/vim-surround
