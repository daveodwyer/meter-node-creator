#!/bin/bash

# Export user home directory
homedir=$( getent passwd "$USER" | cut -d: -f6 )

# Download the node-creator script
wget https://raw.githubusercontent.com/daveodwyer/meter-node-creator/production/node-creator -P ${homedir}

# Make it executable
chmod a+x ./node-creator

# @reboot start script
crontab -l > file; echo "@reboot ${homedir}/node-creator -dwy >> ${homedir}/node-creator.log 2>&1" >> file; crontab file; rm file

# Run first install script
bash ./node-creator -dfwy

