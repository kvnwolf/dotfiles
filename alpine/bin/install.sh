#!/bin/sh

echo ""

SKIP_BIN=${SKIP_BIN:-false}

if [ ${SKIP_BIN} == "true" ] ; then
	echo "⏩ skipping binaries installation"
	exit 0
fi

echo "🚧 installing binaries..."
apk add --quiet --update curl jq tar tree zsh
rm -rf /tmp/gh
mkdir /tmp/gh
wget https://github.com/cli/cli/releases/download/v1.9.2/gh_1.9.2_linux_386.tar.gz -qO /tmp/gh/ghcli.tar.gz
tar --strip-components=1 -xf /tmp/gh/ghcli.tar.gz -C /tmp/gh
mv /tmp/gh/bin/gh /bin/gh
rm -rf /tmp/gh
echo "✅ binaries installed"
