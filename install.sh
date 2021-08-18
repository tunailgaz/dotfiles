#!/usr/bin/env bash

create_symlinks() {
    dotfile_src=$1
    dotfile_dst=$2
    if [[ "$dotfile_dst" != /*  ]]; then
        # relative path
        dotfile_dst=$HOME/$dotfile_dst
    fi
    if [ -e $dotfile_dst ]; then
        if [ -h $dotfile_dst ]; then
            ln -sf $PWD/$dotfile_src $dotfile_dst
            echo "Update existed symlink $dotfile_dst"
        else
            echo "[WARN] Ignore due to $dotfile_dst exists and is not a symlink"
        fi
    else
        ln -sf $PWD/$dotfile_src $dotfile_dst
        echo "Create symlink $dotfile_dst"
    fi
}

config_aliases() {
  src="aliases/memphis"
  dest=".memphis_profile"
  cp "$PWD"/$src $dest
  create_symlinks "aliases/memphis" ".memphis_profile"
}
config_git() {
   create_symlinks "git/gitconfig" ".gitconfig"
}

config_aliases
config_git


#source ~/.memphis_profile
