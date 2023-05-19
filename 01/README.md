VM : AWS

OS : ubuntu 

//install ansible
- sudo apt-get update
- sudo apt-add-repository ppa:ansible/ansible
- sudo apt-get install ansible
- ansible --version

//create docker-compose.yml
- sudo nano docker-compose.yml 
    
//create ansible playbook to install jenkins
sudo nano install-jenkins.yml

sudo ansible-playbook install-jenkins.yml
