#!/usr/bin/env bash
# Functions that have something to do with git

update_via_git_master(){
    # Check script is last version of master
    # Get with branch in
    printf "Checking if command is in the latest version . . . \n"

    current_branch=$(git rev-parse --abbrev-ref HEAD)
    if [[ $current_branch != 'master' ]]; then
        # If not in master stash changes move to master
        git stash
        git checkout master
    fi
    git fetch
    git pull
}

update_repository(){
    git fetch
    git pull
}
