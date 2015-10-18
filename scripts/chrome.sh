#!/usr/bin/env bash

set -eu
set -o pipefail

# The Mac App Store version of 1Password won't work with a Homebrew-Cask-linked Google Chrome.
# To bypass this limitation, I need to move to /Applications folder
if [ ! -d /Applications/Google\ Chrome.app ]; then
	echo "Installing Google Chrome"
	brew cask install google-chrome --force --appdir=/tmp/
	rm -rf /tmp/Google\ Chrome.app
	mv -f /opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ Chrome.app /Applications
fi