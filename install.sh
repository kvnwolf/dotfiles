#!/bin/sh

export DOTFILES_DIR=$(pwd)

if [ "$(uname)" == "Darwin" ] ; then
	echo 'si'
	export DOTFILES_TARGET="osx"
elif [ "$(uname)" == "Linux" ] ; then
	if [ -f /etc/os-release ] ; then
		. /etc/os-release
		if [ "${ID}" == "alpine" ] ; then
			export DOTFILES_TARGET=${ID}
		else
			echo "Linux distribution \"${ID}\" not supported"
		fi
	else
		echo "could not determine Linux distribution"
	fi
else
	echo "os \"$(uname)\" not supported"
	exit 1
fi

clear
echo ""
echo ""
echo "🐺 Welcome to Kevin Wolf's configuration dotfiles"
echo "🏗  Setting up your system..."

export DOTFILES_OSX_DIR="${DOTFILES_DIR}/osx"
sh ${DOTFILES_OSX_DIR}/install.sh

export DOTFILES_ALPINE_DIR="${DOTFILES_DIR}/alpine"
sh ${DOTFILES_ALPINE_DIR}/install.sh

export DOTFILES_SHARED_DIR="${DOTFILES_DIR}/shared"
sh ${DOTFILES_SHARED_DIR}/install.sh
