BriCraft-Scripts
================

Scripts used to manage BriCraft (Minecraft server)

##BackupServer.command

This is a bash script that will find the PID and add it to the screen name of the server (bricraft) so it becomes for example, `49011.bricraft` for the name of the screen. This allows you to run commands within the server windows using `printf`. I use this to give players warnings before the server shuts down. Using the `sleep` command, the script pauses a certain number of seconds before sending more messages to the server. The script then stops the server and creates a tar.bz2 archive of the entire server folder. The script then moves it to another volume, sets the name to the date and a hardcoded version number, and removes the archive from the server volume. Lastly, the script puts my server to sleep.

##start.command

This script starts the server with a screen session called `bricraft` and allots the server 2 GB of RAM.
######Note: I run this from within the directory containing `craftbukkit.jar`.

## Shutdown Server.script

I run this script 15 minutes before I have the server shut down. It will use the `say` command in Terminal (where CraftBukkit runs) will announce how much time until the script will run the `stop` command. There is a `delay` command between the time remaining printouts to keep the time properly.

## Backup Server.script


### Compressing the Server

This script uses Archive Utility (located at /System/Library/CoreServices/Archive Utility.app) to compress the folder containing BriCraft. If you wish to change the format of the compression, use the preferences of Archive Utility to do so. If the script doesn't appear to work right and your server is quite large and contains many thousands of files, you may need to increase the delay before quitting Archive Utility.

### Moving and Renaming the Server

The variable theDate is created using the shell script `date +%m-%d-%Y`. Finder is then told to move the newly created archive to a new directory. The variable fileAlias is then set to the archive in the new directory. fileAlias is then renamed to theDate plus a string plus ".zip". Do not forget to include the extension of the archive.

### Deleting Old Archive

Note: This is not necessary if the backups are stored on the same partition.
The shell script `rm PathToArchive` is then run in order to delete the old archive on the same partition as the server.
