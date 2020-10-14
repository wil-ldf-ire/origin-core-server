sudo apt update;
sudo apt upgrade;
sudo ufw allow OpenSSH;
sudo ufw allow Postfix;
sudo ufw allow in "Apache Full";
sudo ufw allow 80;
sudo ufw allow 8080;
sudo ufw allow 3000;
sudo ufw allow 443;
sudo ufw allow 587;
echo "y" | sudo ufw enable;
sudo apt install --assume-yes mysql-server;
sudo apt install --assume-yes apache2;
sudo apt install --assume-yes php-fpm;
wget https://mirrors.edge.kernel.org/ubuntu/pool/multiverse/liba/libapache-mod-fastcgi/libapache2-mod-fastcgi_2.4.7~0910052141-1.2_amd64.deb;
echo "y" | sudo dpkg -i libapache2-mod-fastcgi_2.4.7~0910052141-1.2_amd64.deb;
sudo mv /etc/apache2/ports.conf /etc/apache2/ports.conf.default;
echo "Listen 8080" | sudo tee /etc/apache2/ports.conf;
sudo apt install --assume-yes net-tools;
sudo a2enmod actions;
sudo mv /etc/apache2/mods-enabled/fastcgi.conf /etc/apache2/mods-enabled/fastcgi.conf.default;
sudo cp /var/www/html/xyz.wildfire.world/fastcgi.conf /etc/apache2/mods-enabled/fastcgi.conf;
sudo systemctl reload apache2;
sudo apt install --assume-yes zip;
sudo apt install --assume-yes unzip;
sudo apt install --assume-yes nginx;
sudo apt install --assume-yes build-essential;
sudo apt install --assume-yes apache2-dev;
wget https://github.com/gnif/mod_rpaf/archive/stable.zip;
unzip stable.zip;
cd mod_rpaf-stable;
make;
sudo make install;
cd ..;
sudo cp /var/www/html/xyz.wildfire.world/rpaf.load /etc/apache2/mods-available/rpaf.load;
sudo cp /var/www/html/xyz.wildfire.world/rpaf.conf /etc/apache2/mods-available/rpaf.conf;
sudo sed -i 's/your_server_ip/ipv4_address/g' /etc/apache2/mods-available/rpaf.conf;
sudo apt install --assume-yes curl;
sudo apt install --assume-yes s3cmd;
sudo apt install --assume-yes php-mysql;
sudo apt install --assume-yes php-curl;
sudo apt install --assume-yes php-cli;
sudo apt install --assume-yes php-mbstring;
sudo apt install --assume-yes php-mysql;
sudo apt install --assume-yes php-curl;
sudo apt install --assume-yes php-gd;
sudo apt install --assume-yes php-zip;
sudo apt install --assume-yes php-xml;
sudo apt install --assume-yes php-sass;
sudo apt install --assume-yes poppler-utils;
sudo apt install --assume-yes nodejs;
sudo apt install --assume-yes npm;
sudo apt install --assume-yes python3-pip;
sudo a2dismod mpm_event;
sudo a2enmod mpm_prefork cgi;
sudo systemctl reload nginx;
sudo systemctl reload apache2;
sudo mkdir /var/www/html/xyz.wildfire.world;
sudo a2enmod rewrite;
sudo a2enmod ssl;
sudo systemctl reload apache2;
echo "ALTER USER 'mysql_root_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'mysql_root_pass'; FLUSH PRIVILEGES; exit;" | sudo mysql;
sudo apt install --assume-yes composer;
sudo snap install --classic certbot;
sudo rm /var/www/html/xyz.wildfire.world -R;