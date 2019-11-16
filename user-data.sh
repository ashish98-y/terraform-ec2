#! /bin/bash -v

apt install software-properties-common -y
apt-add-repository ppa:ansible/ansible -y
apt-get update -y
apt-get upgrade -y
apt install python -y
apt install ansible -y
#conf ssh connection
