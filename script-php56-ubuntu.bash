#!/bin/bash
#Script para instalação de PHP 5.6 para Ubuntu 16.04 LTS
#Alterando a linha 6 e 9 você pode mudar o PHP para a versão 7.0
sudo apt-add-repository -y ppa:ondrej/php
sudo apt -y update
sudo apt -y install php7.0 php5.6-mysql php5.6-cli php5.6-curl php5.6-json php5.6-sqlite3 php5.6-mcrypt php5.6-curl php-xdebug php5.6-mbstring libapache2-mod-php5.6 libapache2-mod-php7.0 mysql-server-5.7 apache2
sudo a2dismod php7.0 ; sudo a2enmod php5.6 ; sudo service apache2 restart ; echo 1 | sudo update-alternatives --config php
#PHP 7.0 como padrão
#sudo a2dismod php5.6 ; sudo a2enmod php7.0 ; sudo service apache2 restart ; echo 2 | sudo update-alternatives --config php 
alias phpv5='sudo a2dismod php7.0 ; sudo a2enmod php5.6 ; sudo service apache2 restart ; echo 1 | sudo update-alternatives --config php'
