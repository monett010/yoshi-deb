#!/bin/bash

echo 'Making directories...'
mkdir /home/$USER/konsave-venv

echo 'Copying Konsave folder'
cp /home/$USER/macdebian/konsave /home/$USER/.config

echo 'Creating and initializing venv'
python3 -m venv /home/$USER/konsave-venv
source /home/$USER/konsave-venv/bin/activate

echo 'Installing konsave'
pip install konsave
pip install setuptools


echo 'Finished'
deactivate


