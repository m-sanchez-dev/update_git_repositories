# Update git repositories

This repository helps you having all the repositories updated with git. It search all the folder that have `.git` folder and updates the repository. The folder that are being checked are the ones on the user folder. Repositories outside the user one will not be updated.

## How to install

To install the script / command follow the steps:

Clone the repository
``` bash
git clone https://github.com/sWallyx/update_git_repositories.git
```

Enter the folder and make `install.sh` executable
``` bash
chmod +x install.sh
```

Run the install script
``` bash
./install.sh
```

Done! You will have the command available* on the terminal.

_*NOTE: You might need to restart the terminal_

## Usage

After making the installation write on the terminal `git-update` and you will see how all the repositories update.

Have fun coding.

## Future plans

* [x] Check folder is git repository
* [x] Add funcy text
* [x] Make it update all git repositories no matter where they are
* [x] Fix fragile loop
* [x] Make auto-update repository

## Licence

MIT - Licence
