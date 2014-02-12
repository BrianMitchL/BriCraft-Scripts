#!/bin/bash
cd "$( dirname "$0" )";
screen -S "bricraft" java -Xms2G -Xmx2G -jar craftbukkit.jar -o true;
screen -r "bricraft"