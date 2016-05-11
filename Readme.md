# Install default environment

NOTE: mainly for ubuntu systems

Copy-paste this in a terminal:

```
if [ "$EUID" -ne 0 ]; then SUDO="sudo"; fi; $SUDO apt-get update && $SUDO apt-get -y install curl && curl https://raw.githubusercontent.com/Blizarre/bootstrap/master/bootstrap.sh | /bin/sh
```
