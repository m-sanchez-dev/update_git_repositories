#!/usr/bin/env bash

update_repository(){
    git fetch
    git pull
}

enter_folder_and_print_inside_exit(){
    cd $1

    # Check folder is git repository
    if [ -d .git ]; then
        base_name=$(basename `git rev-parse --show-toplevel`)
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


echo "Thanks for using me!"

echo "Let me update the repositories"

cd ..

loop_folders

echo "All repositories updated"

echo "Have a nice coding :)"
