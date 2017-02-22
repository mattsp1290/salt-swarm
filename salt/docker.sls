Check Yum for updates:
  cmd.run:
    - name: yum check-update
    - stateful:
      - test_name: ls

Install Docker:
  cmd.run:
    - name: curl -fsSL https://get.docker.com/ | sh

Add Docker User:
  cmd.run:
    - name: usermod -aG docker centos
