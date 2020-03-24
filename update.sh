#!/usr/bin/env bash
# Main file calling all functions needed

clear

# Save user location
USER_PWD=$(pwd)
export USER_PWD

# Get script directory
SCRIPT_DIRECTORY="${0%/*}"

# shellcheck source=/dev/null
source "$SCRIPT_DIRECTORY"/functions-folders.sh

# shellcheck source=/dev/null
source "$SCRIPT_DIRECTORY"/functions-git.sh

# shellcheck source=/dev/null
source "$SCRIPT_DIRECTORY"/functions-misc.sh

show_message

move_to_script_folder

update_via_git_master

move_back_user_location

# TODO: Is this still needed?
cd ..

loop_folders

bye_message

unset USER_PWD