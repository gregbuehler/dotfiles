# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/zsh/.omz

autoload -U colors && colors

ZSH_THEME="gbuehler"
plugins=(git git-flow svn osx vagrant sublime colorize python jira mvn autojump emoji-clock)
source $ZSH/oh-my-zsh.sh

# aliases
alias ping='~/scripts/prettyping.sh --nolegend'
alias fit='git flow'

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
export PATH=$ZSH_ENV_PATH:$PATH

# fix node path
export NODE_PATH="$(which node)"

# ansible vars
export ANSIBLE_HOST_KEY_CHECKING=False 
export ANSIBLE_ROLES_PATH=~/gitlab/devops/deploy/roles 
export WORKSPACE=~/deploy

# golang
export GOPATH=~/go
