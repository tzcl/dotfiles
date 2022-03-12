path+=~/.emacs.d/bin
path+=~/.local/bin

export EDITOR=emacs

if uname -r | grep -q "WSL"; then
    export BROWSER=wslview
fi
