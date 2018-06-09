#!/bin/bash

#Installing brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#Installing zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#VIM-CONFIG
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#POWERLINE-FONTS
git clone https://github.com/powerline/fonts.git --depth=1
fonts/install.sh
rm -rf fonts

brew unlink python
brew uninstall --ignore-dependencies python
brew unlink python@2
brew uninstall --ignore-dependencies python@2

brew install \
  the_silver_searcher \
  terraform \
  wget \
  watch \
  python \
  python3 \
  ruby \
  elixir \
  haskell-stack \
  cowsay \
  httpie \
  awscli \
  lolcat \
  git \
  coreutils

brew cask install docker
brew cask install firefox
brew cask install iterm2
brew cask install spotify
brew cask install intellij-idea-ce
brew cask install slack
brew cask install caskroom/versions/java8
brew cask install visual-studio
brew cask install visual-studio-code

brew cleanup
brew prune
