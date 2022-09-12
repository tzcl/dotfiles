eval "$(/opt/homebrew/bin/brew shellenv)"

path+=("$(go env GOPATH)/bin")
path+=(~/.emacs.d/bin)

export GPG_TTY=$(tty)
