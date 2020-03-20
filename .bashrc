#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT_DIRTRIM=3
PS1='\u \w > '

alias ls='ls --color=auto'
alias ..='cd ..'
alias ll='ls -al --color=auto'
alias ag='ag --path-to-ignore ~/.ignore'

export PATH="${PATH}:${HOME}/.local/bin:${HOME}/scripts:${HOME}/.cask/bin"
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.emacs.d/bin:$PATH
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH

export EDITOR=vim
export VISUAL=ec.sh
export PAGER=less
