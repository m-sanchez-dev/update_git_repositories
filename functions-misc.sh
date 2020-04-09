#!/usr/bin/env bash
# Misc functions file

show_message(){
    # Shows the welcome message
    
    figlet "UPDATE GIT"
    printf "by: sWallyx\n\n"

    printf "Let me update the repositories for you\n"

    printf " - - - - - - - - - - - - - - - \n\n"
}



enter_folder_and_print_inside_exit(){
    # Enters the given folder and prints the
    # repository name.
    # When inside calls for the update_repository
    # function.

    # Enter folder with git
    cd "$1" || exit
    
    # Go up one level, because we are on .git
    cd ..
    
    # Check folder is git repository
    base_name=$(basename "$(git rev-parse --show-toplevel)")
    echo "Updating repository $base_name"
    update_repository
}

bye_message(){
    # Shows the message at the end of the command
    # when everything has been done

    printf "\n - - - - - - - - - - - - - - - "

    printf "\nAll repositories updated\n"

    printf "Have a nice coding :)\n\n"
}