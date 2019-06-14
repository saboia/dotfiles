HOMEBREW_BASE=`brew --prefix`
HOMEBREW_MYSQL_BASE=$HOMEBREW_BASE/opt/mysql@5.7
HOMEBREW_GIT_BASE=$HOMEBREW_BASE/opt/git
HOMEBREW_REDIS_4_BASE=$HOMEBREW_BASE/opt/redis@4.0

export HOMEBREW_NO_ANALYTICS=1
export PATH=$HOMEBREW_BASE/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH:$HOMEBREW_MYSQL_BASE/bin:$HOMEBREW_REDIS_4_BASE/bin

GIT_COMPLETION_PATH=$HOMEBREW_GIT/etc/bash_completion.d/git-completion.bash
GIT_PROMPT_PATH=$HOMEBREW_GIT/etc/bash_completion.d/git-prompt.sh

[ -f $GIT_COMPLETION_PATH ] && . $GIT_COMPLETION_PATH
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export GOPATH=$HOME/go
export PATH=$(brew --prefix python@2)/bin:$(brew --prefix mysql@5.7)/bin:$GOPATH/bin:/usr/local/bin:/usr/local/sbin:$PATH
export GOTEST_PALETTE="magenta,green"

export PIP_REQUIRE_VIRTUALENV=true
export LSCOLORS="DxGxcxdxCxegedabagacad"
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

alias dev-cartola='ssh saboia@cartola-dev-adm.rjocta012ahobe-174.cp.globoi.com'
alias prod-cartola='ssh saboia@cmal24mp11lb16.globoi.com'
alias pydev='sudo python setup.py develop --no-deps'
#alias gera_versao_ipypi='sudo python setup.py --verbose sdist upload -r ipypi --show-response'
alias gera_versao_ipypi='sudo python setup.py sdist upload -r local'

alias gocartolaapi='cd ~/go/src/gitlab.globoi.com/esporte/cartola-api/'
alias gocartolagame='cd ~/Projetos/cartola-game'
alias gocartolaadmin='cd ~/Projetos/cartola-admin'

alias mysql-restart='mysql.server restart'
alias version-cartola='for x in admin api game; do echo "- $x"; tsuru app-run cat /home/application/current/version.txt -a cartola-${x}-prod -o; echo; done'
alias version-monitor='tsuru app-run cat /home/application/current/version.txt -a cartola-monitor'
alias kill-wifi='echo ps -ef | grep airportd / sudo kill -9 PID'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="$HOME/.nvm"
[[ -s $NVM_DIR/nvm.sh ]] && . $NVM_DIR/nvm.sh

export TRELLO_USER=saboia2
export TRELLO_KEY=5439750926fe40e6bf59cfe051bdf912
export TRELLO_TOKEN=abce8a45104a5827184f3576339543a77966e894eee3d181d5158f4be353e900

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
# eval "$(pyenv virtualenv-init -)"
fi

export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export WORKON_HOME=$HOME/.virtualenvs
pyenv virtualenvwrapper_lazy

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*