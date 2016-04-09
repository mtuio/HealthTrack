#!/bin/bash
passwd -d root

yum -y install vim
yum -y install python policycoreutils-python-2.2.5-20.el7.x86_64
yum -y install curl

#by default connections are dropped on port 5000
systemctl stop firewalld
systemctl disable firewalld

#Install mongo
cat >/etc/yum.repos.d/mongodb-org-3.2.repo << EOF
[mongodb-org-3.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/\$releasever/mongodb-org/3.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.2.asc
EOF

yum -y install mongodb-org
systemctl start mongod
systemctl enable mongod

#install pip + python packages
rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
yum -y update
yum -y install python-pip

pip install pymongo
pip install flask