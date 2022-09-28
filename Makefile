all:
	stow --verbose --target=$$HOME --restow home
	stow --verbose --target=$$HOME/.doom.d --restow doom
	stow --verbose --target=$$HOME/.gnupg --restow gpg

delete:
	stow --verbose --target=$$HOME --delete home
	stow --verbose --target=$$HOME/.doom.d --delete doom
	stow --verbose --target=$$HOME/.gnupg --delete gpg
