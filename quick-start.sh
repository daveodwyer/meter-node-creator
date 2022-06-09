#!/bin/bash

# Download the node-creator script
wget https://raw.githubusercontent.com/JellyPool/meter-node-creator/production/quick-start.sh

# Make it executable
chmod a+x ./node-creator

# Export user home directory
homedir=$( getent passwd "$USER" | cut -d: -f6 )

# @reboot start script
crontab -l > file; echo "@reboot ${homedir}/node-creator -dwy >> ${homedir}/node-creator.log 2>&1" >> file; crontab file; rm file

# Run first install script
bash ./node-creator -dfwy

