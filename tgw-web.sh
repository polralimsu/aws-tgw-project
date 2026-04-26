#!/bin/bash
yum install -y httpd php php-mbstring php-pdo php-mysqlnd php-json php-gd
systemctl start httpd
systemctl enable httpd

wget https://github.com/polralimsu/aws-tgw-project/raw/refs/heads/main/frontend_source.zip
mv frontend_source.zip /var/www/html/
cd /var/www/html/
unzip frontend_source.zip
rm -f frontend_source.zip
sed -i "s/localhost/10.2.2.100/g" config.php