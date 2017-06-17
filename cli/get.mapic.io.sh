#!/bin/bash
# 
# This script is meant for quick & easy install via:
#   'wget -qO- https://get.mapic.io/ | sh'
# or:
#   'curl -sSL https://get.mapic.io/ | sh'
#
# #

# todo: ubuntu/osx/windows compatibility.
# use wget/unzip instead of git?

echo "get.mapic script"

# clone mapic
git clone git@github.com:mapic/mapic.git mapic

ls -l



# install mapic-cli
cd mapic/cli && bash mapic-cli.sh
