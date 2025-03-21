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

# set up the Python virtual environment
# For python3.10: skip env setup if environment already exists
sudo apt-get install python3.10-venv
python3.10 -m venv aws_neuron_venv_pytorch_p310

# Activate Python venv 
source aws_neuron_venv_pytorch_p310/bin/activate 
python -m pip install -U pip 

# Install Jupyter notebook kernel
pip install ipykernel 
python3.10 -m ipykernel install --user --name aws_neuron_venv_pytorch_p310 --display-name "Python (torch-neuronx)"
pip install jupyter notebook
pip install environment_kernels

# Install wget, awscli 
python -m pip install wget 
python -m pip install awscli

# install Neuron pip packages
