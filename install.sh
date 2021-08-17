#!/usr/bin/env bash

config_git() {
    cp  "git/gitconfig" "~/.gitconfig"
}

config_aliases() {
     cp  "aliases/memphis" "~/.memphis_profile"
}

config_aliases
config_git

source ~/.memphis_profile
