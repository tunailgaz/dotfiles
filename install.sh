#!/usr/bin/env bash

config_git() {
    ln -sf  "git/gitconfig" "~/.gitconfig"
}

config_aliases() {
     ln -sf  "aliases/memphis" "~/.memphis_profile"
}

config_aliases
config_git

source ~/.memphis_profile
