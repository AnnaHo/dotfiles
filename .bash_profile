export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#copied by .bashrc

# Displaying GIT Branch Name in Console
git-branch-console() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# colorful bash prompt
PS1='\[\033[1;33m\]\u\[\033[1;37m\]@\[\033[1;32m\]\h\[\033[1;37m\]:\[\033[1;31m\]\w\[\033[1;36m\]$(git-branch-console)\$ \[\033[0m\]'

source ~/.profile

