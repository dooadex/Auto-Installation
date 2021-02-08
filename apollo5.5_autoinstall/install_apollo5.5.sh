#!/bin/bash

cd ${HOME}/
git clone https://github.com/ApolloAuto/apollo.git

cd apollo
git checkout master

echo "export APOLLO_ROOT_DIR=$(pwd)" >> ~/.bashrc  && source ~/.bashrc

bash docker/scripts/dev_start.sh
bash docker/scripts/dev_into.sh

./apollo.sh build
