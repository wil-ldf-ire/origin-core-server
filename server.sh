sudo apt update;
sudo apt upgrade -y;
sudo apt install lsb-release ca-certificates apt-transport-https software-properties-common -y;
sudo add-apt-repository ppa:ondrej/php;
sudo ufw allow OpenSSH;
sudo ufw allow Postfix;
sudo ufw allow 80;
sudo ufw allow 8080;
sudo ufw allow 3000;
sudo ufw allow 443;
sudo ufw allow 587;
echo "y" | sudo ufw enable;
sudo apt install -y mysql-server;
sudo apt install -y php8.1-fpm;
sudo apt install -y net-tools;
sudo apt install -y zip;
sudo apt install -y unzip;
sudo apt install -y p7zip-full;
sudo apt install -y nginx;
sudo apt install -y build-essential;
sudo apt install -y curl;
sudo apt install -y s3cmd;
sudo apt install -y htop;
sudo apt install -y php8.1-mysql;
sudo apt install -y php8.1-curl;
sudo apt install -y php8.1-cli;
sudo apt install -y php8.1-mbstring;
sudo apt install -y php8.1-mysql;
sudo apt install -y php8.1-curl;
sudo apt install -y php8.1-gd;
sudo apt install -y php8.1-zip;
sudo apt install -y php8.1-xml;
sudo apt install -y poppler-utils;
sudo apt install -y python3-pip;
sudo systemctl reload nginx;
echo "ALTER USER 'mysql_root_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'mysql_root_pass'; FLUSH PRIVILEGES; exit;" | sudo mysql;
sudo curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php;
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer;
sudo snap install --classic certbot;
sudo apt install -y python3-certbot-nginx;
echo 'post_max_size = 1024M' | sudo tee -a /etc/php/8.1/fpm/php.ini;
echo 'upload_max_filesize = 1024M' | sudo tee -a /etc/php/8.1/fpm/php.ini;
echo 'memory_limit = 2048M' | sudo tee -a /etc/php/8.1/fpm/php.ini;
sudo /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024;
sudo /sbin/mkswap /var/swap.1;
sudo /sbin/swapon /var/swap.1;
sudo service php8.1-fpm restart;
sudo apt-get install -y imagemagick;
sudo apt install -y ffmpeg;
sudo apt update;
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0;
sudo apt-add-repository https://cli.github.com/packages;
sudo apt update;
sudo apt -y install gh;
sudo git config --global user.email "hq@wildfire.world";
sudo git config --global user.name "wildfire";