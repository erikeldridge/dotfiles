# prompt
export PS1="\w \\$ \[$(tput sgr0)\]"

# tmux
# credit https://www.sitepoint.com/10-killer-tmux-tips/
alias tmax='tmux attach -t base || tmux new -s base'
