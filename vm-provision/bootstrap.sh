#!/usr/bin/env bash

YELLOW='\033[1;33m'
NC='\033[0m' # No Color

printf "${YELLOW}----- Installing packages -----${NC}"
sudo apt-get update
sudo apt-get install -y git curl nodejs

printf "${YELLOW}----- Adding keys for RVM -----${NC}"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

printf "${YELLOW}----- Installing RVM -----${NC}"
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm

#printf "${YELLOW}----- Installing bundler gem -----${NC}"
#gem install bundler

printf "${YELLOW}----- Installing bundle -----${NC}"
cd /vagrant
bundle install

#printf "${YELLOW}----- Installing Rails -----${NC}"
#gem install rails --no-ri --no-rdoc

printf "${YELLOW}----- RVM version -----${NC}"
rvm -v

printf "${YELLOW}----- Ruby path -----${NC}"
which ruby