eval "$(/opt/homebrew/bin/brew shellenv)"

path+=("$(go env GOPATH)/bin")

export GPG_TTY=$(tty)

# Prepend LLVM to path
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
