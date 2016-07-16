export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_REQUIRE_VIRTUALENV=true
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
source /usr/local/bin/virtualenvwrapper.sh
export LSCOLORS="DxGxcxdxCxegedabagacad"
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

alias pydev='sudo python setup.py develop --no-deps'
alias gera_versao_ipypi='sudo python setup.py --verbose sdist upload -r ipypi --show-response'

alias gocartolaapi='cd ~/Projetos/go/src/gitlab.globoi.com/esporte/cartola-api/'
alias gocartolagame='cd ~/Projetos/cartola-game'

alias mysql-restart='mysql.server restart'
alias version-cartola='for x in admin api game; do echo "- $x"; tsuru app-run cat /home/application/current/version.txt -a cartola-${x}-prod -o; echo; done'

source ~/git-completion.sh


export GOPATH=$HOME/Projetos/go
export PATH=$PATH:$GOPATH/bin


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

eval $(docker-machine env)
