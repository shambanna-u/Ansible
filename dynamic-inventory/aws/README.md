* Create User and give AmazonEC2FullAccess access.
* Open the cloudshell
install the ansible
  - use ```sudo yum install -y ansible```
OR
  - use ```pip3 install ansible```

create a file aws_ec2.yaml.
```vi aws_ec2.yaml```

```
---
plugin: aws_ec2
aws_access_key: <YOUR-AWS-ACCESS-KEY>
aws_secret_key: <YOUR-AWS-SECRET-KEY>
keyed_groups:
  - key: tags
    prefix: tag"
```
vi ```sudo vi /etc/ansible/ansible.cfg```

