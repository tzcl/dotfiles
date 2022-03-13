# Start keychain
/usr/bin/keychain -q --nogui $HOME/.ssh/id_ed25519
source $HOME/.keychain/$HOST-sh 2>/dev/null

# Start Syncthing
if ! /usr/bin/pgrep syncthing > /dev/null; then
    syncthing --no-browser > /dev/null 2>&1 &
fi
