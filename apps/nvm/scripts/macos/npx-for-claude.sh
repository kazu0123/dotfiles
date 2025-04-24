#!/usr/bin/env bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

NODE_VERSIONS_DIR="$HOME/.nvm/versions/node"
LATEST_NODE_VERSION=$(nvm version v22)
export PATH="$NODE_VERSIONS_DIR/$LATEST_NODE_VERSION/bin:$PATH"
exec npx "$@"
