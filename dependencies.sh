#!/usr/bin/env bash

./dependencies/external

brew install `cat dependencies/brew`
brew cask install `cat dependencies/cask`
sudo gem install `cat dependencies/gem` --no-ri --no-rdoc --conservative
