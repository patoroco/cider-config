#!/usr/bin/env bash

set -eu
set -o pipefail


if [ ! -d /Applications/Tunnelblick.app.app ]; then
	echo "Installing Tunnelblick"
	brew cask install tunnelblick --force --appdir=/tmp/
	rm -rf /tmp/Tunnelblick.app
	mv /opt/homebrew-cask/Caskroom/tunnelblick/*/Tunnelblick.app /Applications/
fi