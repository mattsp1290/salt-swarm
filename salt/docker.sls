Check Yum for updates:
  cmd.run:
    - name: yum check-update

Install Docker:
  cmd.run:
    - name: curl -fsSL https://get.docker.com/ | sh
