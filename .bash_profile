#
# ~/.bash_profile
#

export PATH="${PATH}:${HOME}/.local/bin:${HOME}/scripts:${HOME}/.cask/bin"
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.emacs.d/bin:$PATH
export GOPATH=$HOME/gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH

export EDITOR=vim
export VISUAL=ec.sh
export PAGER=less

export GPG_TTY=$(tty)

eval $(keychain --eval --agents ssh id_ed25519)

[[ -f ~/.bashrc ]] && . ~/.bashrc
