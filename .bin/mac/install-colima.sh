#!/usr/bin/env bash

brew install docker lima colima docker-compose
colima start default
docker context use colima
mkdir ~/.docker/cli-plugins/
sudo ln /opt/homebrew/bin/docker-compose ~/.docker/cli-plugins/docker-compose
brew services start colima
