all:
	stow --verbose --target=$$HOME --restow git zsh ssh
	stow --verbose --target=$$HOME/.doom.d --restow doom

delete:
	stow --verbose --target=$$HOME --delete git zsh ssh
	stow --verbose --target=$$HOME/.doom.d --delete doom
