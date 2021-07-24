# Ansible Dynamic Inventory with GCP
* Create a service account  *ansible* with compute admin access, download the key.
* Open the cloudshell.
* Install the ansible.
  - use `sudo apt-get install ansible`


* Edit ansible.cfg add plugin `enable_plugins = gcp_compute` below of [inventory].


* Create a file gcp.yaml and copy the below content and change the projects id and service account file location .

```vi gcp.yaml```

```
---
plugin: gcp_compute
projects:
  - shambu-wmt
filters: []
auth_kind: serviceaccount
service_account_file: /home/shambu_wmt/shambu-wmt.json
```
 * Run the following command to check if inventory is working 
 `ansible-inventory gcp.yaml  --list`
 * Genarate ssh key if not genarated alredy and add to Metadata sshkeys Metadata https://console.cloud.google.com/compute/metadata/sshKeys
 * Run the following command to check if able to connect to all the instances.
 `ansible -i gcp.yaml all -m ping`
 * Run httpd.yaml playbook to install httpd.
 * File is availble in this git directory
# Watch Video
## Ansible Dynamic Inventory with GCP
[![IMAGE ALT TEXT HERE](https://github.com/shambanna-u/Ansible/blob/main/images/gcp.PNG)](https://youtu.be/3ykVuk1pS2A)
