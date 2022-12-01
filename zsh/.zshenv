path+=~/.emacs.d/bin
path+=~/.local/bin
path+=/usr/local/go/bin
path+=~/.go/bin
path+=~/.fly/bin

export EDITOR=emacs
export GOPATH=~/.go
export FLYCTL_INSTALL=~/.fly

if uname -r | grep -q "WSL"; then
    export BROWSER=wslview
fi
. "$HOME/.cargo/env"
