# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/zsh/.omz

autoload -U colors && colors

ZSH_THEME="lambda"
plugins=(git git-flow svn osx vagrant sublime colorize python jira mvn autojump emoji-clock)
source $ZSH/oh-my-zsh.sh

unset GREP_OPTIONS

# aliases
alias ls='lsd'
alias fit='git flow'
alias fix='reset; stty sane; tput rs1; clear; echo -e "\033c"'
alias murder='pkill'

export EDITOR=vim

# Customize to your needs...
#
ZSH_ENV_PATH=''
ZSH_ENV_PATH=$ZSH_ENV_PATH:/usr/local/bin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/usr/bin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/bin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/usr/sbin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/sbin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/usr/local/bin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/usr/local/git/bin
ZSH_ENV_PATH=$ZSH_ENV_PATH:/usr/local/sbin
ZSH_ENV_PATH=$ZSH_ENV_PATH:~/Android/Sdk/tools
export PATH=$ZSH_ENV_PATH:$PATH

# fix node path
export NODE_PATH="$(which node)"

# ansible vars
export ANSIBLE_HOST_KEY_CHECKING=False 

# golang
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

# android
#export ANDROID_HOME=/opt/android-sdk
export ANDROID_HOME=/home/gbuehler/Android/Sdk


function reconnect () { tmux attach || tmux new; }

function search () {
  SEARCH_TERM=$1
  exec cat <(grep -rIlE "$SEARCH_TERM" *) <(find . -iname "*$SEARCH_TERM*" | sed 's#^\./##') | sort -u
}

function docker-konmari() {
  ttl=${1:-24}

  docker system prune --force --filter "until=${ttl}h" --all
  docker volume prune --force --filter "label!=keep"
}
