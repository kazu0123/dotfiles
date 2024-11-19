#!/usr/bin/env bash

brew install docker lima colima docker-compose
colima start --cpu 8 --memory 96 --disk 120 --vm-type vz --vz-rosetta --mount-type virtiofs default
docker context use colima
mkdir ~/.docker/cli-plugins/
sudo ln /opt/homebrew/bin/docker-compose ~/.docker/cli-plugins/docker-compose
brew services start colima
