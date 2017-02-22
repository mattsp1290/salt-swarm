Check Yum for updates:
  cmd.run:
    - name: yum check-update
    - stateful: false

Install Docker:
  cmd.run:
    - name: curl -fsSL https://get.docker.com/ | sh

Add Docker User:
  cmd.run:
    - name: usermod -aG docker centos
