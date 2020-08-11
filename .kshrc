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
export PS1='$ '

# Alias hub to g if hub is in $PATH
# Technically this is slighly flawed since it requires reloading the shell to load when adding or deleting the package.
alias g="$(which hub > /dev/null 2>&1 && echo hub || echo git)"
alias un-tar.gz='tar -xzf'
alias c='cd'
alias m='mkdir -p'
alias p='pwd'
alias r='rm -d'
alias v="$EDITOR"

set -A complete_sftp shiina.fossegr.im
set -A complete_ssh shiina.fossegr.im
set -A complete_songs play download # See bin/songs
