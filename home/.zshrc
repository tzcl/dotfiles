# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/github.com/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias ls="exa"
alias cat="bat"
alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias jq="gojq"

alias gc="git add . && git commit"
alias gca="git add . && git commit --amend"

# Keybindings
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Complete lowercase to uppercase
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
eval "$(zoxide init zsh)"

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

source ~/github.com/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/github.com/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lawt3/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lawt3/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lawt3/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lawt3/google-cloud-sdk/completion.zsh.inc'; fi
