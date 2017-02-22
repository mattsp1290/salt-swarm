Check Yum for updates:
  cmd.run:
    - name: yum check-update
    - stateful:
      - test_name: echo "{}"

Install Docker:
  cmd.run:
    - name: curl -fsSL https://get.docker.com/ | sh

Add Docker User:
  cmd.run:
    - name: usermod -aG docker centos

docker:
  service:
    - enable: True
    - reload: True
