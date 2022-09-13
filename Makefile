all:
	stow --verbose --target=$$HOME --restow git zsh
	stow --verbose --target=$$HOME/.doom.d --restow doom

delete:
	stow --verbose --target=$$HOME --delete git zsh
	stow --verbose --target=$$HOME/.doom.d --delete doom
