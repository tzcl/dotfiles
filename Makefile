all:
	stow --verbose --target=$$HOME --restow home
	stow --verbose --target=$$HOME/.doom.d --restow doom
	stow --verbose --target=$$HOME/.gnupg --restow gpg
	stow --verbose --target=$$HOME/.config/karabiner --restow karabiner
	stow --verbose --target=$$HOME/.config/helix --restow helix

delete:
	stow --verbose --target=$$HOME --delete home
	stow --verbose --target=$$HOME/.doom.d --delete doom
	stow --verbose --target=$$HOME/.gnupg --delete gpg
	stow --verbose --target=$$HOME/.config/karabiner --delete karabiner
	stow --verbose --target=$$HOME/.config/helix --delete helix
