curl -sL https://rpm.nodesource.com/setup_lts.x | bash
yum install nodejs -y
cp catalogue.service /etc/systemd/system/catalogue.service
useradd roboshop
mkdir /app 
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue.zip 
cd /app 
unzip /tmp/catalogue.zip
npm install
systemctl enable catalogue 
systemctl start catalogue
