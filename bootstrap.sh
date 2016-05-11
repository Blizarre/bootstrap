#! /bin/sh
set -e

export BOOTSTRAP_DIR=~/git/bootstrap
export GIT_REPO=https://github.com/Blizarre/bootstrap.git

sudo apt-get -y update 
sudo apt-get -y upgrade
sudo apt-get -y install curl vim git tmux
mkdir -p $BOOTSTRAP_DIR
git clone $GIT_REPO $BOOTSTRAP_DIR
ln -s $BOOTSTRAP_DIR/vimrc ~/.vimrc 
ln -s $BOOTSTRAP_DIR/tmux.config ~/.tmux.conf

