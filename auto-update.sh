#!/usr/bin/env bash

update_via_git_master(){
    # Check script is last version of master
    # Get with branch in
    current_branch=$(git branch --show-current)
    if [[ $current_branch != 'master' ]]; then
        # If not in master stash changes move to master
        git stash
        git checkout master
    fi
    git fetch

    git pull
}