#! /bin/sh

set -e

BOOTSTRAP_DIR=~/git/bootstrap
GIT_REPO=https://github.com/Blizarre/bootstrap.git

# Do not use sudo if the script is run as root, as sudo might not be available
SUDO=""
if [ "$EUID" -ne 0 ]; then
    SUDO=sudo
fi

$SUDO apt-get -y update
$SUDO apt-get -y upgrade
$SUDO apt-get -y install python2.7 shellcheck curl vim git tmux

mkdir -p $BOOTSTRAP_DIR
git clone $GIT_REPO $BOOTSTRAP_DIR
ln -s $BOOTSTRAP_DIR/vimrc ~/.vimrc
ln -s $BOOTSTRAP_DIR/tmux.config ~/.tmux.conf

# Python pip and syntax checker
curl -o get-pip.py https://bootstrap.pypa.io/get-pip.py
$SUDO python2.7 get-pip.py
rm get-pip.py
$SUDO pip2.7 install flake8

# Vim plugins + syntax checker
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
