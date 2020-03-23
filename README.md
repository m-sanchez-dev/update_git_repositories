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

* [ ] Restart after update, see issue [#4](https://github.com/sWallyx/update_git_repositories/issues/4)
* [ ] Investigate if cd can just be removed [#5](https://github.com/sWallyx/update_git_repositories/issues/5)
* [ ] Move functions out of `update.sh` [#6](https://github.com/sWallyx/update_git_repositories/issues/6)

## Licence

[MIT](LICENSE) - License
