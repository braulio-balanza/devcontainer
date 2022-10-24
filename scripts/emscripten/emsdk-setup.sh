#!/bin/zsh
echo "## Activating emsdk"
sed -i 's/NODE\_JS = .*/NODE\_JS = node/g' $EMSDK/.emscripten
$EMSDK/emsdk activate
echo 'export PATH="$EMSDK:$PATH"' >> $HOME/.zshrc
echo 'export PATH="$EMSDK/upstream/emscripten:$PATH"' >> $HOME/.zshrc