#git setup
yum install git -y


#maven setup
sudo yum install java-1.8.0-openjdk -y
wget https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz
tar -zxvf *tar.gz
yum install maven -y


#jenkins setup
#java dependency for jenkins(sudo yum install java-17-amazon-corretto -y)
sudo yum install java-17-amazon-corretto -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
systemctl restart jenkins
systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
