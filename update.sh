#!/usr/bin/env bash

clear

# Save user location
USER_PWD=$(pwd)

# Get script directory
SCRIPT_DIRECTORY="${0%/*}"

source $SCRIPT_DIRECTORY/functions-folders.sh
source $SCRIPT_DIRECTORY/functions-git.sh
source $SCRIPT_DIRECTORY/functions-misc.sh

show_message

echo "Thanks for using me!"

echo "Let me update the repositories for you"

move_to_script_folder

update_via_git_master

move_back_user_location

# TODO: Is this still needed?
cd ..

loop_folders

echo "All repositories updated"

echo "Have a nice coding :)"
