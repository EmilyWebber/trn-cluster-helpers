#!/bin/sh

# check the cores and your access
neuron-ls

# log in to your account 

# add credentials for your repo

# set up the repo to install the driver

# rip out the previous installs
sudo apt-get remove -y 'aws-neuron*' --allow-change-held-packages 

# install the Neuron system software

# Ubuntu
sudo apt-get install linux-headers-$(uname -r) -y
sudo apt-get install aws-neuronx-dkms -y
sudo apt-get install aws-neuronx-runtime-lib=2.* -y
sudo apt-get install aws-neuronx-collectives=2.* -y
sudo apt-get install aws-neuronx-tools -y
export PATH=/opt/aws/neuron/bin:$PATH
export LD_LIBRARY_PATH=/opt/amazon/efa/lib64:$LD_LIBRARY_PATH
