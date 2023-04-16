sudo curl -sL https://rpm.nodesource.com/setup_lts.x | bash
sudo yum install nodejs -y
sudo useradd roboshop
sudo mkdir /app
sudo curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip
cd /app
sudo unzip /tmp/catalogue.zip
cd /app
sudo cp catalogue.service /etc/systemd/system/
sudo npm install
sudo systemctl daemon-reload
sudo systemctl enable catalogue
sudo systemctl start catalogue