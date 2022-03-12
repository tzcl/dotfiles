#!/usr/bin/env bash

# Just for WSL/Ubuntu for now

# Check for sudo
if [[ $UID != 0 ]]; then
    echo "Remember to run this script with sudo:"
    echo "sudo $0 $*"
    # exit 1
fi

# Set up ssh key
if [[ ! -f ~/.ssh/id_ed25519 ]]; then
    ssh-keygen -t ed25519 -C "toby@tzcl.me"
fi

# Install packages
echo "Installing packages"

# Get latest stable git releases
sudo add-apt-repository -y ppa:git-core/ppa

# Get Syncthing
sudo curl -s -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Get ripgrep
curl -o ~/downloads/ripgrep.deb -L https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ~/downloads/ripgrep.deb

sudo apt update
sudo apt install -y git stow syncthing keychain fd-find
sudo apt upgrade -y

# Install fd
if [[ ! -f /usr/bin/fd ]]; then
    mv /usr/bin/fdfind /usr/bin/fd
fi

# Install fonts
echo "Installing fonts"
mkdir -p ~/.fonts
sudo cp ~/mega/misc/fonts/fira-code/* ~/.fonts
sudo cp ~/mega/misc/fonts/etbembo/* ~/.fonts
fc-cache -f

# Install zsh packages
echo "Installing zsh packages"
mkdir -p ~/.zsh
clone () {
    if [[ ! -d $2 ]]; then
        git clone $1 $2
    fi
}

clone https://github.com/romkatv/powerlevel10k ~/.zsh/powerlevel10k
clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

# Install Doom Emacs
echo "Installing Doom Emacs"
if [[ ! -d ~/.doom.d ]]; then
    rm -rf ~/.emacs.d
    git clone --depth 1 https://github.com/hlissner/doom-emacs.git ~/.emacs.d
    ~/.emacs.d/bin/doom install

    rm -rf ~/.doom.d
    git clone https://github.com/tzcl/dotdoom.git ~/.doom.d
    ~/.emacs.d/bin/doom sync
fi

# Deploy dotfiles
stow */
