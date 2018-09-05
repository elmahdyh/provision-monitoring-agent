#cloud-config
preserve_hostname: false
hostname: my-mon-agent

# Upgrade the instance on first boot
# Aliases: apt_upgrade
package_upgrade: true


# Update apt database on first boot (run 'apt-get update').
# Aliases: apt_update
package_update: true

packages:
 - apache2

runcmd:
 - mkdir -p /etc/mon-agent/
 - touch /etc/mon-agent/agent.conf
 - echo "hostname=initial-value" >> /etc/mon-agent/agent.conf
 - sed -i "s/initial-value/`hostname`/g" /etc/mon-agent/agent.conf

groups:
 - my-staff
 
users:
 - default
 - name: alice
   groups: my-staff

 - name: bob
   groups: my-staff
      
output: {all: '| tee -a /var/log/cloud-init-output.log'}
