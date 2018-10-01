# 2018/8/2 speed test
# zmodload zsh/zprof


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/fky/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git web-search docker-compose gpg-agent battery sudo zsh-autosuggestions fast-syntax-highlighting colored-man-pages z extract docker-machine colorize
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# better yaourt colors
export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

LS_COLORS=$LS_COLORS:'di=0;35:' ; export LS_COLORS

autoload bashcompinit
bashcompinit


export PATH="/home/fky/.local/bin:$PATH"
# export PATH="/opt/anaconda/bin:$PATH"
# gopath
export GOPATH="/home/fky/.go:/home/fky/code/go"
#export GOROOT="/home/fky/.go"
export PATH="$PATH:$GOPATH/bin"
#export JAVA_HOME
export JAVA_HOME="/usr/lib/jvm/default"
export PATH="${PATH}:${JAVA_HOME}/bin"

eval "$(pipenv --completion)"

alias c=clear
alias f=file
alias ct='ccat'
alias pc4='proxychains4'
alias dry='TERM=xterm dry'
alias dose='docker-compose'
alias dm='docker-machine'
alias or='optirun'
alias rm='trash'
alias zshrc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias ipad="ip addr | grep inet && hostname -i"
alias cdp="cd ~/playground" # change to the playground
alias p="pwd" # shorter
alias tmux="tmux -2"

autoload -U compinit && compinit


# install npm package in User dir
PATH="$HOME/.node_modules/bin:$PATH"
# /home/fky/.node_modules/bin
export npm_config_prefix=~/.node_modules

#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# NEVER CHANGE IT UNLESS YOU NOW THE DANGER
export XDG_CONFIG_HOME=${HOME}/.config

# seems like i don't have to declare it if not in a project 
export CLASSPATH="${HOME}/code/java:."

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH:/home/fky/.gem/ruby/2.5.0/bin"
# 2018/8/2 for time testing
#zprof

