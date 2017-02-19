#!/usr/bin/env bash

set -eu
set -o pipefail

# Test if commands exists, and if not, install them.
# Source: http://www.cyberciti.biz/faq/unix-linux-shell-find-out-posixcommand-exists-or-not/
command -v brew > /dev/null || \
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install caskroom/cask/brew-cask

# Install rvm
command -v rvm > /dev/null || (curl -sSL https://get.rvm.io | bash -s stable)

# Install pip using brew to don't need sudo to use pip install
command -v pip > /dev/null || \
	brew install python

command -v cider > /dev/null || \
	(pip install cider && \
	pip install click==4.1) # https://github.com/msanders/cider/pull/30


# Test if .cider folder exists or download it from github
[ -d ~/.cider ] || git clone git@github.com:patoroco/dotfiles.git ~/.cider


cider restore


# Stop Responding to Key Presses
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
