This repo store a small script and a few configuration files for new aws instance / docker container / pc. Just copy / paste the command-line below in your terminal, and it will download python, vim, tmux and htop, as well as a few plugins to quickly detect errors on bash/python scripts.

It is designed and tested for an ubuntu-like system.

# Install default environment

Copy-paste this in a terminal:

```
if [ "$EUID" -ne 0 ]; then SUDO="sudo"; fi; $SUDO apt-get update && $SUDO apt-get -y install curl && curl https://raw.githubusercontent.com/Blizarre/bootstrap/master/bootstrap.sh | /bin/sh
```
