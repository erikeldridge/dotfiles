# history
export HISTTIMEFORMAT="%h %d %H:%M:%S> "
export HISTCONTROL=ignoredups:erasedups

# prompt
export PS1="\w \\$ \[$(tput sgr0)\]"

# ruby
eval "$(rbenv init -)"

# tmux
alias tmux='tmux attach -t base || tmux new -s base'
