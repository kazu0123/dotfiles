#!/usr/bin/env bash

brew install \
  bison@3.8 \
  flex \
  mingw-w64 \
  pkgconfig \
  llvm \
  mas


LATEST_NVM_VERSION=$(curl -o- https://api.github.com/repos/nvm-sh/nvm/releases | jq -r '.[0].tag_name')
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM_VERSION/install.sh | bash


bash ~/dotfiles/scripts/macos/installer/middleware/bitwarden.sh
bash ~/dotfiles/scripts/macos/installer/middleware/colima.sh
