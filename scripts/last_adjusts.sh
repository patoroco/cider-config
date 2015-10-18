#!/usr/bin/env bash

set -eu
set -o pipefail


echo "Installing Xcode Command Line Tools"
xcode-select --install

echo "Seting up cocoapods"
pod setup

echo "Installing vim plugins"
git submodule init
git submodule update