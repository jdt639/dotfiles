#!/bin/bash

set -e
ROOT_PATH=$(pwd -P)
USER=$(id -un)

install_homebrew() {
  if ! which /opt/homebrew/bin/brew > /dev/null 2>&1; then
    info "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi
  eval $(/opt/homebrew/bin/brew shellenv)
}