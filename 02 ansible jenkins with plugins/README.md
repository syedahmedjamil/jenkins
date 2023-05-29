# about
ansible playbook to install and run jenkins with plugins pre installed using docker image on a fresh ubuntu server

plugins included :
- golang
- pipeline (workflow-aggregator)


# vm details
- VM : AWS ec2 t2.micro
- OS : ubuntu 

# install ansible
- sudo apt-get update
- sudo apt-add-repository ppa:ansible/ansible
- sudo apt-get install ansible
- ansible --version

# create Dockerfile
run `sudo nano Dockerfile` then paste the contents of this file -> https://github.com/syedahmedjamil/jenkins-session/blob/main/02/Dockerfile
# create docker-compose.yml
run `sudo nano docker-compose.yml` then paste the contents of this file -> https://github.com/syedahmedjamil/jenkins-session/blob/main/02/docker-compose.yml
    
# create ansible playbook to install jenkins using docker
run `sudo nano install-jenkins.yml` then paste the contents of this file -> https://github.com/syedahmedjamil/jenkins-session/blob/main/02/install-jenkins.yml

# run playbook
sudo ansible-playbook install-jenkins.yml
