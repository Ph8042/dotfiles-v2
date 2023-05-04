#!/bin/bash

# Install FUSE
sudo add-apt-repository universe
sudo apt install libfuse2

if wget --spider https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage 2>/dev/null; then
    curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage -o /tmp/nvim-nightly;
    chmod +x /tmp/nvim-nightly;
    sudo mv /tmp/nvim-nightly /usr/local/bin/nvim;
else
    echo Neovim nightly appimage not available.
fi
