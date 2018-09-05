Requirements
------------
1- Create IAM Users & Groups via AWS Management Console.

2- Create the Ansible EC2 instance via AWS Management Console .

3- Create key pair on the new instance using ssh-keygen and import the public key under Key Pairs section on the AWS console.

4- Install the Ansible on the EC2 machine. 

5- Create the main yaml script called site.yml.

6- Create a playbook role called  provision-monitor-agent.

7- Copy "my-monitoring-agent.sh" script (which contains the cloud-init directive) under /etc/ansible/roles/provision-monitor-agent/templates/.
8- Add the hostgroup [monitoragents] under /etc/ansible/hosts.

9- Add your code inside "main.yml" task under /etc/ansible/roles/provision-monitor-agent/tasks and include the field "user_data" from which you can specify the location of my-monitoring-agent.sh script to pass the desired actions to cloud-init.

10- Finally run the playbook: ansible-playbook site.yml.
