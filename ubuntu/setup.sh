#!/bin/bash

self="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
parent=`realpath $self/../`

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install \
	vim \
	zsh \
	git \
	xclip \
	snapd \
	haskell-platform \
	fonts-powerline \

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo dpkg-reconfigure keyboard-configuration

$parent/setup-intellij.sh
$parent/symlinks.sh

echo "=== REMAINING STEP ==="
echo ""
echo "- Set Solarized Dark as your theme in the terminal emulator"
echo "- Reboot the system"
