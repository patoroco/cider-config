#!/usr/bin/env bash

set -eu
set -o pipefail

echo "Installing ruby gems:"

for gem in \
	"cocoapods" \
	"bundler" \
	"bropages" \
	"cloudapp_api" \
	; do
	echo "- "${gem}
	gem install ${gem} --no-rdoc > /dev/null # hide all stdout but show errors
done

exit 0
