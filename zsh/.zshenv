# Add doom binaries to path
path+=~/.emacs.d/bin

# Set env vars
export EDITOR=emacs

if uname -r | grep -q "WSL"; then
    export BROWSER=wslview
fi
