alias ll="ls -al"
export PS1="[\$?] \h:\w \$ "

mcd() {
    mkdir -p $1
    cd $1
}

HISTFILESIZE=5000
HISTSIZE=5000

export HISTIGNORE=$HISTIGNORE:*AWS*ACCESS_KEY*

# auto-correct spelling errors in directories
shopt -s cdspell

# enable the use of the ** wildcard
shopt -s globstar

# Append history instead of rewriting it
shopt -s histappend
