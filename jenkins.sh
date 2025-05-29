#git setup
yum install git -y

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

#maven setup
wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.tar.gz
tar -zxvf 8tar.gz
sudo mv apache-maven-3.9.6 /opt/maven
sudo vim /etc/profile.d/maven.sh
#java for maven
#sudo yum install java-1.8.0-openjdk-devel -y
#sudo update-alternatives --config javac
#2
#sudo yum install maven -y
#mvn --version
