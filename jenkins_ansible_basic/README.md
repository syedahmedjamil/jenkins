# about
Ansible playbook to install and run Jenkins using Docker on a fresh ubuntu server


# vm details
- VM : AWS ec2 t2.micro
- OS : ubuntu 

# install ansible
- sudo apt-get update
- sudo apt-add-repository ppa:ansible/ansible
- sudo apt-get install ansible
- ansible --version

# create docker-compose.yml
run `sudo nano docker-compose.yml` then write the lines present in this file [docker-compose.yml](https://github.com/syedahmedjamil/jenkins-scripts/blob/main/jenkins_ansible_basic/docker-compose.yml)
    
# create ansible playbook to install jenkins using docker
run `sudo nano install-jenkins.yml` then write the lines present in thie file [install-jenkins.yml](https://github.com/syedahmedjamil/jenkins-scripts/blob/main/jenkins_ansible_basic/install-jenkins.yml)

# run playbook
`sudo ansible-playbook install-jenkins.yml`

