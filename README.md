BriCraft-Scripts
================

AppleScritps used to manage BriCraft (minecraft server)

## Shutdown Server

I run this script 15 minutes before I have the server shut down. It will use the `say` command in Terminal (where CraftBukkit runs) will announce how much time until the script will run the `stop` command. There is a `delay` command between the time remaining printouts to keep the time properly.

## Backup Server


### Compressing the Server

This script uses Archive Utility (located at /System/Library/CoreServices/Archive Utility.app) to compress the folder containing BriCraft. If you wish to change the format of the compression, use the preferences of Archive Utility to do so. If the script doesn't appear to work right and your server is quite large and contains many thousands of files, you may need to increase the delay before quitting Archive Utility.

### Moving and Renaming the Server

The variable theDate is created using the shell script `date +%m-%d-%Y`. Finder is then told to move the newly created archive to a new directory. The variable fileAlias is then set to the archive in the new directory. fileAlias is then renamed to theDate plus a string plus ".zip". Do not forget to include the extension of the archive.

### Deleting Old Archive

Note: This is not necessary if the backups are stored on the same partition.
The shell script `rm PathToArchive` is then run in order to delete the old archive on the same partition as the server.