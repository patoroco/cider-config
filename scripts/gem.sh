#!/usr/bin/env bash

set -eu
set -o pipefail

echo "Installing ruby gems:"

for gem in \
	"cocoapods" \
	"bundler" \
	"bropages" \
	; do
	echo "- "${gem}
	gem install ${gem} > /dev/null # hide all stdout but show errors
done

exit 0