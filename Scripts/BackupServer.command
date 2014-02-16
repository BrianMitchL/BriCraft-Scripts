#!/bin/bash
#Brian Mitchell - 2014
cd /Volumes/BriCraft/;
TEMP=$(screen -list | grep bricraft | cut -f1 -d'.' | sed 's/\W//g')".bricraft";
screen -S $TEMP -p 0 -X stuff "`printf "say The server will go offline in 15 minutes.\r"`";
sleep 600;
screen -S $TEMP -p 0 -X stuff "`printf "say The server will go offline in 5 minutes.\r"`";
sleep 240;
screen -S $TEMP -p 0 -X stuff "`printf "say The server will go offline in 1 minute.\r"`";
sleep 30;
screen -S $TEMP -p 0 -X stuff "`printf "say The server will go offline in 30 seconds.\r"`";
sleep 20;
screen -S $TEMP -p 0 -X stuff "`printf "say The server will go offline in 10 seconds.\r"`";
sleep 5;
screen -S $TEMP -p 0 -X stuff "`printf "say The server will go offline in 5 seconds.\r"`";
sleep 5;
screen -S $TEMP -p 0 -X stuff "`printf "stop\r"`";
sleep 20;
tar  -jcvf  BriCraft.tar.bz2 BriCraft;
cp BriCraft.tar.bz2 /Volumes/Media/Media/Minecraft\ Backups/;
mv /Volumes/Media/Media/Minecraft\ Backups/BriCraft.tar.bz2 /Volumes/Media/Media/Minecraft\ Backups/$(date +%Y-%m-%d)"-1.7.2".tar.bz2;
rm BriCraft.tar.bz2;
osascript -e 'tell application "System Events" to sleep';
exit