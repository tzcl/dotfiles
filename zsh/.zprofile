# Start keychain
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh 

# Start Syncthing
if ! /usr/bin/pgrep syncthing > /dev/null; then
	(nohup syncthing > /dev/null 2>&1 &)
fi
