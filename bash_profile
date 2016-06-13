alias ll="ls -al"
export PS1="[\$?] \h:\w \$ "

# auto-correct spelling errors in directories
shopt -s cdspell

# enable the use of the ** wildcard
shopt -s globstar

# Append history instead of rewriting it
shopt -s histappend
