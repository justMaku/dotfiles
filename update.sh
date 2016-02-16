#!/usr/bin/env bash

brew list | sed > dependencies/brew
brew cask list | sed > dependencies/cask
gem list --local --no-versions --no-verbose | tail -n +1 > dependencies/gem
