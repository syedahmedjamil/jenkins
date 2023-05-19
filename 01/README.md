# vm details
- VM : AWS
- OS : ubuntu 

# install ansible
- sudo apt-get update
- sudo apt-add-repository ppa:ansible/ansible
- sudo apt-get install ansible
- ansible --version

# create docker-compose.yml
run `sudo nano docker-compose.yml` then write the lines present in this file https://github.com/syedahmedjamil/jenkins-session/blob/main/01/docker-compose.yml
    
# create ansible playbook to install jenkins
run `sudo nano install-jenkins.yml` then write the lines present in thie file https://github.com/syedahmedjamil/jenkins-session/blob/main/01/install-jenkins.yml

# run playbook
sudo ansible-playbook install-jenkins.yml

# result - console
![](https://imgur.com/a/FYLFJ3Y)

# result - output
![](https://imgur.com/a/BY4MKwG)

