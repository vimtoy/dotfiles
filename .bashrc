#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim='nvim'
alias pc4='proxychains4'

PS1='[\u@\h \W]\$ '

# set env
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

#autojump configuration
source /usr/share/autojump/autojump.bash

#powerline configuration
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh
