# salt-swarm
SaltStack + Docker Swarm = &lt;3

The goal of this project is to launch a Docker Swarm via SaltStack.
For experimentation I am using CentOS 7 VMs on AWS.


---------------------------------------


## Setup

### Step 1


#### Master

1.      curl -L https://bootstrap.saltstack.com -o install_salt.sh
        sudo sh install_salt.sh -M
2.      Make sure ports 4505 and 4506 are open

#### Minion

1.
      curl -L https://bootstrap.saltstack.com -o install_salt.sh
      sudo sh install_salt.sh
2.
      Edit /etc/salt/minion
      master should be set to the IP of the master
3.
      sudo service salt-minion restart

### Step 2


#### Master

1.
        Accepts all keys from minions
        sudo salt-key --accept-all
2.
        run a test command to ensure everything works ex:
        salt '\*' cmd.run 'ls -l /etc'
3.
        copy salt states to the base environment for salt
        (by default this is /srv/salt)
4.
        install Docker on all minions
        sudo salt '\*' state.apply docker
