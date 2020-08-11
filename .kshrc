export PATH="$HOME/bin:$PATH"
export EDITOR=nvi
export FCEDIT=$EDITOR
export PAGER=less
export LESS='-iMRS -x2'
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1

HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

set -o emacs

alias ..='cd ..'
alias mkdir='mkdir -p'
alias g='git'
alias untargz='tar -xzf'
alias vi='nvi'
