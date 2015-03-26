#/bin/bash
set -e

curl -o install_salt.sh -L https://bootstrap.saltstack.com
sudo sh install_salt.sh -P git v2014.7.0
sudo salt-call --local --file-root=$(pwd)/vagrant/devmode/salt/roots state.highstate
