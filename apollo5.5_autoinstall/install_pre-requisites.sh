#!/bin/bash

file_path=${HOME}/Auto-Installation/apollo5.5_autoinstall

sudo apt-get update
sudo apt-get upgrade
sudo apt install -y git tar curl



bash ${file_path}/install_nvidia_gpu_driver.sh
bash ${file_path}/install_docker_engine.sh
bash ${file_path}/install_nvidia_container_toolkit.sh

sudo usermod -a -G docker $USER
sudo service docker restart


