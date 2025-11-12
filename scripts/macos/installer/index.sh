#!/usr/bin/env bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install coreutils
brew install git

git clone https://github.com/kazu0123/dotfiles.git ~/dotfiles


bash ~/dotfiles/scripts/macos/installer/link/index.sh
bash ~/dotfiles/scripts/macos/installer/middleware/index.sh
