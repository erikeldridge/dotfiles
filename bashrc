# prompt
export PS1="\w \\$ \[$(tput sgr0)\]"

# tmux
# credit https://www.sitepoint.com/10-killer-tmux-tips/
# https://rhnh.net/2011/08/20/vim-and-tmux-on-osx/
alias tmux='TERM=screen-256color-bce tmux; tmux attach -t base || tmux new -s base'
