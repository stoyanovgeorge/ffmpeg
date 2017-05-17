#/bin/bash

echo "export PYTHONPATH=/home/ubuntu/install/vmaf/python:$PYTHONPATH" | sudo tee -a $HOME/.bashrc
echo "alias ll="ls -al --color"" | sudo tee -a $HOME/.bashrc

source $HOME/.bashrc
