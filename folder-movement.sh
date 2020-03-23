#!/usr/bin/env bash

move_to_script_folder(){
    # Move to script folder
    script_directory="${0%/*}"
    cd $script_directory
}

move_back_user_location(){
    # Goes back to the user location where the script
    # was call from
    cd $USER_PWD
}