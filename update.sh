#!/usr/bin/env bash

#=========
# Dotfiles
#=========

cp ~/.zshrc dotfiles
cp ~/.bash_profile dotfiles

#=====
# Brew
#=====

brew list | sed > dependencies/brew
brew cask list | sed > dependencies/cask

#====
# Gem
#====

gem list --local --no-versions --no-verbose | tail -n +1 > dependencies/gem

#=============
# Sublime Text
#=============

cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings dependencies/sublime-packages
cp ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings blobs/sublime-settings