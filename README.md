# salt-swarm
SaltStack + Docker Swarm = &lt;3

The goal of this project is to launch a Docker Swarm via SaltStack.
For experimentation I am using CentOS 7 VMs on AWS.

Setup:
1)
  Master:
    1)
      curl -L https://bootstrap.saltstack.com -o install_salt.sh
      sudo sh install_salt.sh -M

  Minion:
    1)
      curl -L https://bootstrap.saltstack.com -o install_salt.sh
      sudo sh install_salt.sh

    2)
       Edit /etc/salt/minion
       master should be set to the IP of the master

2)
