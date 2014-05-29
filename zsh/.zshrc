# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# color loader
autoload -U colors && colors

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gbuehler"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow svn osx vagrant sublime colorize python jira mvn autojump emoji-clock)

source $ZSH/oh-my-zsh.sh

# enable prompt
#source $HOME/.prompt
#gbuehler_prompt

# enable jira
JIRA_URL=https://jira.thetus.com
#JIRA_RAPID_BOARD="true"

# aliases
alias ping='~/scripts/prettyping.sh --nolegend'
alias fit='git flow'

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin:/Users/gbuehler/.rvm/gems/ruby-2.0.0-p247/bin:/Users/gbuehler/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/gbuehler/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/gbuehler/.rvm/bin:/Users/gbuehler/bin/Sencha/Cmd/3.1.2.342:/usr/local/sbin:/Users/gbuehler/.ec2/bin:/Users/gbuehler/.rvm/bin:/Applications/Postgres93.app/Contents/MacOS/bin:$PATH

# fix node path
export NODE_PATH="$(which node)"

# ec2 vars for ec2 toolkit
source $HOME/.ec2_profile

# fix JAVA_HOME var
source $HOME/.java_profile

# ansible vars
export ANSIBLE_HOST_KEY_CHECKING=False 
export ANSIBLE_ROLES_PATH=~/gitlab/devops/deploy/roles 
export WORKSPACE=~/deploy

# golang
export GOPATH=~/go
