#!/usr/bin/env bash

config_git() {
    cp "$(pwd)/git/gitconfig" "~/.gitconfig"
}

config_aliases() {
    cp   "$(pwd)/aliases/memphis" "~/.memphis_profile"
}

config_aliases
config_git

source "~/.memphis_profile"
