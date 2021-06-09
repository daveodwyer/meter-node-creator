#!/bin/bash

THIS_SCRIPT_USER=$(whoami)
GROUP_TO_ADD=docker

echo "Hi $THIS_SCRIPT_USER. We will be installing the node with this user"

#set variable
source <(grep -m 1 "METER_MAIN_DATA_PATH_TEST" ~/.bashrc )

#check if variable exists
if [ -z "$METER_MAIN_DATA_PATH_TEST" ]; then
    echo "Variable doesnt exist, setting in bashrc"
    echo export "METER_MAIN_DATA_PATH_TEST=$PWD" >> ~/.bashrc
    source <(grep -m 1 "METER_MAIN_DATA_PATH_TEST" ~/.bashrc )
fi

#groups
if grep -q $GROUP_TO_ADD /etc/group
then
	echo "group exists already. Not creating"
else
	echo "group does not exist. Creating Now."
	sudo groupadd $GROUP_TO_ADD
	echo "Group $GROUP_TO_ADD created"
fi

if groups $THIS_SCRIPT_USER | grep -q $GROUP_TO_ADD
then
	echo "is in group already. No need to re-add"
else
	echo "Not in group yet adding now"
        sudo usermod -aG $GROUP_TO_ADD $THIS_SCRIPT_USER
	su $THIS_SCRIPT_USER
	echo $(groups dod)
fi



echo "Path variable set to:"
echo $METER_MAIN_DATA_PATH_TEST

cd ~
echo "Lets install docker.io and 7zip"
sudo apt-get update
sudo apt-get install docker.io p7zip-full -y

echo "Lets create the meter_main_data folder"
mkdir -p meter_main_data
cd meter_main_data

echo "And now we will download docker


