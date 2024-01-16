all:
	stow --verbose --target=$$HOME --restow home
	stow --verbose --target=$$HOME/.config/karabiner --restow karabiner
	stow --verbose --target=$$HOME/.config/helix --restow helix
	stow --verbose --target=$$HOME/.config/lf --restow lf
	stow --verbose --target=$$HOME/.config/kitty --restow kitty
