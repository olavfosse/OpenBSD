# All the variables set here are documented in KSH(1)
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

# ~/bin is only prepended to path in login shells by default
export PATH="$HOME/bin:$PATH"

# The two following commands needs to be in this precise order. If they are in the opposite order ksh enters vi mode which breaks a lot of features including Ctrl-l clearing, UP / DOWN / Ctrl-p / Ctrl-n history navigation, LEFT / RIGHT / Ctrl-b / Ctrl-f / Ctrl-a / Ctrl-e prompt navigation and Ctrl-r Emacs-like history isearch.
export EDITOR=nvi
set -o emacs

export PAGER=less
export FCEDIT="$EDITOR"

alias un-tar.gz='tar -xzf'
alias c='cd'
alias g='git'
alias m='mkdir -p'
alias p='pwd'
alias r='rm -d'
alias v="$EDITOR"

set -A complete_sftp shiina.fossegr.im
set -A complete_ssh shiina.fossegr.im
