Role Name
=========

This Role to provision EC2 instance with monitor agent installed on it.

Requirements
------------

1- Create IAM Users & Groups.
2- Create the Ansible EC2 instance via AWS Management Console .
3- Create key pair on the new instance using ssh-keygen and import the public key under Key Pairs section on the AWS console.
3- Install the Ansible on the EC2 machine. 
4- Create the main yaml script called site.yml
5- Create  the playbook rolei called  provision-monitor-agent.
6- Copy "my-monitoring-agent.sh" script (which contains the cloud-init directive) under /etc/ansible/roles/provision-monitor-agent/templates/
7- Add the hostgroup [monitoragents] under /etc/ansible/hosts
8- Add your code inside "main.yml" task under /etc/ansible/roles/provision-monitor-agent/tasks and include the field "user_data" from which you can specify the location of my-monitoring-agent.sh script to pass the desired actions to cloud-init.
9- Finally run the playbook: ansible-playbook site.yml.

Role Variables
--------------
Dependencies
------------
Example Playbook
----------------

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
