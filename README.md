<p align="center"><img src="https://uploads-ssl.webflow.com/604d7b0daca4e5a5b86d64ef/60553b8f72e4ff447f121f59_logo.png" /></p>

## About 

This is an unofficial script that creates a [Meter Validator Node](https://docs.meter.io/full-node-and-validation/setup-full-node) in one command on Ubuntu/Debian linux environments.
The main aims of this project are to reduce support queries and allow anyone, regardless of their experience, become validators.

Without the blockchain archive that is used in this script, a freshly installed node downloads all of the blockchain data from each of the other nodes on the chain. This is an extremelely slow process that can take over a day to complete. The blockchain archive contains the bulk of the blockchain data to run a node. After it is unpacked, only a small percentage (~5%) of the blockchain is downloaded via the slower node to node sync.

## Important: Manual Configuration Required
You must manually open the ports on your server. The 
[official Meter documentation](https://docs.meter.io/full-node-and-validation/configure-the-full-node-to-validator-node) shows
each port required but if you are using AWS, [Paul's guide](https://paolo-g.medium.com/step-by-step-guide-to-creating-a-node-in-meter-mainnet-4cdde1085fbb) is useful for showing the exact process. 

## Options

Below are the possible options to use this tool<br>
`-d` will download and install the blockchain archive<br>
`-f` will force remove any existing docker images if you have attempted to install/run them before<br>
`-w` will download and install watchtower<br>
`-h` will show this prompt<br>
`-i /home/user/my-custom-folder` allows you to use a different install directory
Please note that the options can be chained ie -dfw will chain the above options<br>

## Usage

The preferred method to execute this shell script is to call it directly from GitHub:
```shell
bash <(wget -q -O - https://raw.githubusercontent.com/daveodwyer/meter-node-creator/production/node-creator) -dfw
```

If you do not want to download the blockchain, you may remove the d flag.

You may pass flags linked or seperated
-d -f -w is the same as -dfw
