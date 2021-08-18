#!/usr/bin/env bash

config_git() {
     ln -sf  "$(pwd)/git/gitconfig" "~/.gitconfig"
}

config_aliases() {
    ln -sf   "$(pwd)/aliases/memphis" "~/.memphis_profile"
}

config_aliases
config_git

source "~/.memphis_profile"
