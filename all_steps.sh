Install Ansible :
sudo amazon-linux-extras install ansible2
Update ansible.cfg file as below  
/etc/ansible
https://github.com/CodvaTech-Labs/ansible-demo/blob/main/ansbile-configure.cfg
**
[defaults]
host_key_checking = false
remote_user = ec2-user
ask_pass = false
private_key_file = /root/ansible/ec2key.pem
roles_path = /root/ansible/roles

[privilege_escalation]
become = true
become_method = sudo
become_user = root
become_ask_pass = false

# Location where ansible look for hosts
inventory = /etc/ansible/hosts

*****

Update Host File
[java]
172.31.44.99


Update ec2key file
/root/ansible/ec2key.pem

Give required permission to ec2 key
chmod 400 ec2key.pem

Validate Connectivity
ansible all -m ping

Test Sample Playbook :
- hosts: webapp
  tasks:
    - name: Install telnet package
      yum:
        name: telnet
        state: latest

Validate YAML : https://jsonformatter.org/yaml-formatter



Install Maven :
Ref Link : https://gist.github.com/sebsto/19b99f1fa1f32cae5d00

sudo wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
sudo yum install -y apache-maven
mvn --version

Go to below path :
Go to below path and update settings.xml on mavens server
/usr/share/apache-maven/conf/settings.xml


Go to Jenkins

CI Job
yum install git
Fork below repository in your GitHub Account
https://github.com/CodvaTech-Labs/maven-demo
Install Git on Jenkins server
yum install git
cd LoginWebApp
mvn deploy

Setup Job for URL Monitoring
URL Monitoring Check :
Ref :https://github.com/CodvaTech-Labs/cicdscripts/blob/main/urlmonitoring.sh


CD Job
Setup Job for Application  Deployment using Ansible :
Install Ansible plugin for Jenkins
Setup CD job
Run below ansible playbook from Jenkins
https://github.com/CodvaTech-Labs/cicdscripts/blob/main/deployment.yml
