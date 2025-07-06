#!/usr/bin/env bash

LATEST_NVM_VERSION=$(curl -o- https://api.github.com/repos/nvm-sh/nvm/releases | jq -r '.[0].tag_name')
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$LATEST_NVM_VERSION/install.sh | bash


nvm install 20
nvm use 20
npm install -g @google/gemini-cli
