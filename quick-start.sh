#!/bin/bash

# Download the node-creator script
wget https://raw.githubusercontent.com/JellyPool/meter-node-creator/launch_script/node-creator

# Make it executable
chmod a+x ./node-creator

# @reboot start script
homedir=$( getent passwd "$USER" | cut -d: -f6 )
crontab -l > file; echo "@reboot ${homedir}/node-creator -dwy >> ${homedir}/node-creator.log 2>&1" >> file; crontab file; rm file

# Run first install script
bash ./node-creator -dfwy

