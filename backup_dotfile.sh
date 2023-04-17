#!/bin/bash

set -e
ROOT_PATH=$(pwd -P)
USER=$(id -un)

#link ~/.zshrc
ln /Users/$USER/.zshrc .