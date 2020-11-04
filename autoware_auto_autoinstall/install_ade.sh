#!/bin/bash
cd ${HOME}
mkdir adehome
cd adehome
wget https://gitlab.com/ApexAI/ade-cli/uploads/85a5af81339fe55555ee412f9a3a734b/ade+x86_64
mv ade+x86_64 ade
chmod +x ade
./ade --version

sudo cp ade /usr/local/bin/
which ade
./ade update-cli
./ade --version

ade update-cli

touch .adehome

git clone --recurse-submodules https://gitlab.com/autowarefoundation/autoware.auto/AutowareAuto.git

cd AutowareAuto/

ade start
ade enter
