#!/usr/bin/env bash

set -eu
set -o pipefail


echo "Installing vim plugins"
git submodule init
git submodule update