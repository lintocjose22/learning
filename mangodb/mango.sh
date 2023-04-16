sudo cp mongo.rep /etc/yum.repos.d/
osudo yum install mongodb-org -y
sudo systemctl enable mongod
sudo systemctl start mongod
