#!/usr/bin/env bash

brew list | sed > dependencies/brew
brew cask list | sed > dependencies/cask
gem list --local --no-versions --no-verbose | tail -n +1 > dependencies/gem
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings dependencies/sublime-packages
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings blobs/sublime-settings