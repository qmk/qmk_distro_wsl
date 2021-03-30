# TODO: find a better location to force terminal title
PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
PROMPT_COMMAND='echo -ne "\033]0;QMK WSL\007"'
