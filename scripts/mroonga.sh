sudo yum install -y centos-release-SCL
sudo rpm -ivh http://packages.groonga.org/centos/groonga-release-1.1.0-1.noarch.rpm
sudo yum makecache
sudo yum install -y mysql55-mysql-server mysql55-mysql
sudo /etc/init.d/mysql55-mysqld start
sudo chkconfig mysql55-mysqld on
sudo yum install -y mysql55-mroonga
echo "export PATH=/opt/rh/mysql55/root/usr/bin:$PATH" >> /home/vagrant/.bashrc
