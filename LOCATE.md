## Fixing locate database

If some repositories are not found, you can update the database of the locate command with `updatedb`

### Command not found

This is the default command to run the update

``` shell
sudo /usr/libexec/locate.updatedb
```

Create a symbolic link for the command so you can just call `updatedb`

``` shell
sudo ln -s /usr/libexec/locate.updatedb /usr/bin/updatedb
```

Now you want to update your Mac's locate database? Just run the "universal" linux command `updatedb`!:

``` shell
sudo updatedb &
```

It's just so easy..! 