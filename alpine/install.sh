#!/bin/sh

if [ ${DOTFILES_TARGET} != "alpine" ] ; then
	exit 0
fi

echo ""
echo ""
echo "Alpine"
echo "-----"

export DOTFILES_ALPINE_BIN_DIR="${DOTFILES_ALPINE_DIR}/bin"
sh ${DOTFILES_ALPINE_BIN_DIR}/install.sh
