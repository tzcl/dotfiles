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

export PATH="${PATH}:${HOME}/.local/bin:${HOME}/scripts"
export EDITOR=vim
export VISUAL=ec.sh
export PAGER=less