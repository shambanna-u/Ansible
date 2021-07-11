#!/bin/bash
yum install -y git ansible
git clone https://github.com/shambanna-u/Ansible
cd Ansible/code/hands-on/
ansible-playbook httpd.yaml
