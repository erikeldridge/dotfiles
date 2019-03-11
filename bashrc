# .bashrc (not .bash_profile or .profile) because of 
# tmux usage per https://serverfault.com/a/261807

# tmux
alias tmux='tmux attach -dt base || tmux new -s base'

# rbenv, per https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Gradle
# Docs https://gradle.org/install/
export PATH=$PATH:/opt/gradle/gradle-5.2/bin
