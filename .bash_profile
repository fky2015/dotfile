#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# load Key binding only at start
xmodmap ~/.Xmodmap

export LINGO_17_HOME="/home/fky/.local/bin"

export PATH="/home/fky/.local/bin:$PATH"
