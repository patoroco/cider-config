#!/usr/bin/env bash

set -eu
set -o pipefail


echo "DEFAULTS RELATED"
echo "================"

echo "Disable the sound effects on boot"
sudo nvram SystemAudioVolume=" "


echo "Remove duplicates in the 'Open With' menu"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister \
  -kill -r -domain local -domain system -domain user

echo "Disable local Time Machine snapshots"
sudo tmutil disablelocal

echo "Disable the sudden motion sensor as it's not useful for SSDs"
sudo pmset -a sms 0

echo "Hide directories in $HOME"
chflags hidden ~/VirtualBox ~/Library


# Kill affected applications
for app in Finder Dock Mail Safari SystemUIServer; do killall "$app" > /dev/null 2>&1; done
echo "Done. Note that some of these changes require a logout/restart to take effect."