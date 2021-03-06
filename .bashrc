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
