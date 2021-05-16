#!/bin/sh

if [ ${DOTFILES_TARGET} != "osx" ] ; then
	exit 0
fi

echo ""
echo ""
echo "OSX"
echo "-----"

export DOTFILES_OSX_BIN_DIR="${DOTFILES_OSX_DIR}/bin"
sh ${DOTFILES_OSX_BIN_DIR}/install.sh

export DOTFILES_OSX_APPS_DIR="${DOTFILES_OSX_DIR}/apps"
sh ${DOTFILES_OSX_APPS_DIR}/install.sh
