#!/usr/bin/env bash

show_message(){
    
    echo "

 _    _  ___   ____        _______ ______    _____ _____ _______
| |  | |  __ \|  __ \   /\|__   __|  ____|  / ____|_   _|__   __|
| |  | | |__) | |  | | /  \  | |  | |__    | |  __  | |    | |
| |  | |  ___/| |  | |/ /\ \ | |  |  __|   | | |_ | | |    | |
| |__| | |    | |__| / ____ \| |  | |____  | |__| |_| |_   | |
 \____/|_|    |_____/_/    \_\_|  |______|  \_____|_____|  |_|
                                                     by: sWallyx

    "
    
}



enter_folder_and_print_inside_exit(){
    # Enter folder with git
    cd "$1" || exit
    
    # Go up one level, because we are on .git
    cd ..
    
    # Check folder is git repository
    if [ -d .git ]; then
        base_name=$(basename "$(git rev-parse --show-toplevel)")
        echo "Updating repository $base_name"
        update_repository
    else
        folder_name=${PWD##*/}
        echo "$folder_name is not a Git Repository"
    fi
}