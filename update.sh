#!/usr/bin/env bash

update_repository(){
    git fetch
    git pull
}

enter_folder_and_print_inside_exit(){
    cd "$1" || exit
    
    # Check folder is git repository
    if [ -d .git ]; then
        base_name=$(basename "$(git rev-parse --show-toplevel)")
        echo "Updating repository $base_name"
        update_repository
    else
        folder_name=${PWD##*/}
        echo "$folder_name is not a Git Repository"
    fi
    
    cd ..
}

loop_folders(){
    for dir in */; do
        enter_folder_and_print_inside_exit "$dir"
    done
}

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

clear

show_message

echo "Thanks for using me!"

echo "Let me update the repositories"

cd ..

loop_folders

echo "All repositories updated"

echo "Have a nice coding :)"
