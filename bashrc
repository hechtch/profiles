# nvim installed from debian package was not loading hte init.vim where it should have, so aliased it.

alias vi='nvim --cmd "source ~/.config/nvim/init.vim"'
alias vim='nvim --cmd "source ~/.config/nvim/init.vim"'
alias nvim='nvim --cmd "source ~/.config/nvim/init.vim"'

export EDITOR=vi

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTCONTROL=ignoreboth
HISTSIZE=25000
HISTIGNORE="pwd:cd:ls:history:clear:fg:code*:jobs"

