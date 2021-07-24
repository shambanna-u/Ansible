# Ansible Dynamic Inventory with AWS
* Create User *ansible* with Programmatic access and give AmazonEC2FullAccess access, store the keys.
* Open the cloudshell.
* Install the ansible.
  - use `pip3 install ansible`
* When you install ansible with pip its will not create defaults files so lets create directory.
```
sudo mkdir /etc/ansible/
cd /etc/ansible
sudo wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/hosts
sudo wget https://raw.githubusercontent.com/ansible/ansible/devel/examples/ansible.cfg

```
* Edit ansible.cfg add ssh arguments `ssh_args = -i ~/ansible.pem -l ec2-user` below of [ssh_connection] 
and add plugin `enable_plugins = aws_ec2` below of \[inventory].


* Create a file aws_ec2.yaml.

```vi aws_ec2.yaml```

```
---
plugin: aws_ec2
aws_access_key: <YOUR-AWS-ACCESS-KEY>
aws_secret_key: <YOUR-AWS-SECRET-KEY>
keyed_groups:
  - key: tags
    prefix: tag
```
 * Run the following command to check if inventory is working 
 `ansible-inventory -i aws_ec2.yaml --list`
 * Run the following command to check if able to connect to all the instances.
 `ansible -i aws_ec2.yaml all -m ping`
 * Run httpd.yaml playbook to install httpd.
 * File is availble in this git directory

# Watch Video
 ## Ansible Dynamic Inventory with AWS
[![IMAGE ALT TEXT HERE](https://github.com/shambanna-u/Ansible/blob/main/images/aws.PNG)](https://youtu.be/ZI33JGWzvf4)
