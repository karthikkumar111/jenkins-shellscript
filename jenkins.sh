PS1="\[\e[1;36m\][\u@\h \W]\\$\[\e[0m\] "
yum install git -y
sudo yum install java-17-amazon-corretto -y
yum install maven -y
#java dependency for jenkins(sudo yum install java-17-amazon-corretto -y)
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
systemctl restart jenkins
systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
