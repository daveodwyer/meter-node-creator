<p align="center"><img src="https://uploads-ssl.webflow.com/604d7b0daca4e5a5b86d64ef/60553b8f72e4ff447f121f59_logo.png" /></p>

## About 

This is an unofficial script that creates a [Meter Validator Node](https://docs.meter.io/full-node-and-validation/setup-full-node) in one command on Ubuntu/Debian linux environments. 
The main aims of this project are to help novice people become validators and to speed up the node syncing process.

When you set up a node manually, you must download the full blockchain before you can start validating. This can be a 
very slow process, taking multiple hours to download. This script will download this data from a server and unpack it 
onto your node for you - which is a much faster process. Essentially instead of waiting around 10 hours for the node to 
fully sync, this script will have your node synced more than 90% in about 15 mins, depending on the speed of your server 
and the mirror where the data is hosted. 

## Important: Manual Configuration Required
You must manually open the ports on your server. The 
[official Meter documentation](https://docs.meter.io/full-node-and-validation/configure-the-full-node-to-validator-node) shows
each port required but if you are using AWS, [Paul's guide](https://paolo-g.medium.com/step-by-step-guide-to-creating-a-node-in-meter-mainnet-4cdde1085fbb) is useful for showing the exact process. 

## Options

Below are the possible options to use this tool<br>
-d will download the chain before your node boots. It speeds up the process considerably<br>
-f will force remove any existing docker images if you have attempted to install/run them before<br>
-w will download and install watchtower<br>
-h will show this prompt<br>
Please note that the options can be chained ie -dfw will chain the above options<br>

## Usage

The preferred method to execute this shell script is to call it directly from GitHub:
```shell
bash <(wget -q -O - https://raw.githubusercontent.com/daveodwyer/meter-node-creator/production/node-creator) -dfw
```

If you do not want to download the blockchain, you may remove the d flag.

You may pass flags linked or seperated
-d -f -w is the same as -dfw
