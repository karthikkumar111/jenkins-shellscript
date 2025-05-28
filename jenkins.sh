#git setup
yum install git -y


#maven setup
sudo yum install -y java-17-amazon-corretto-devel
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -zxvf *tar.gz
yum install maven -y


#java dependency for jenkins(sudo yum install java-17-amazon-corretto -y)
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum install jenkins -y
systemctl restart jenkins
systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword
