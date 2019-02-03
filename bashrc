# .bashrc (not .bash_profile or .profile) because of 
# tmux usage per https://serverfault.com/a/261807

# tmux
alias tmux='tmux attach -dt base || tmux new -s base'
