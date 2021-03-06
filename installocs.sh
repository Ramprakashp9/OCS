#!/bin/bash
#date :01-01-21
#purpose:ocs installation in linux
#author :amit rikhari

 
#to get configuration files 
 
wget https://raw.githubusercontent.com/Ramprakashp9/OCS/main/CaCert.pem

wget  https://github.com/Ramprakashp9/OCS/raw/main/Ocsinventory-Unix-Agent-2.4.2.tar.gz


#make system ready for ocs installation 
apt update

apt upgrade -y

apt-get --fix-broken install

wget https://launchpad.net/ubuntu/+source/ipmiutil/3.0.1-1/+build/11869455/+files/ipmiutil_3.0.1-1_amd64.deb


dpkg -i ipmiutil_3.0.1-1_amd64.deb


apt install libssl-dev nmap libmodule-install-perl pciutils dmidecode ipmitool rpcbind systemd ureadahead man-db libtirpc1 -y


cpan -i CPAN


cpan -i Module::Install Digest::MD5 XML::Simple Net::IP Proc::Daemon Proc::PID::File nvidia::ml Compress::Zlib Crypt::SSLeay LWP::Protocol::https Net::CUPS Net::SNMP Net::Netmask Net::Ping Nmap::Parser Data::UUID Parse::EDID

#extracting  ocs package 
tar -xvf Ocsinventory-Unix-Agent-2.4.2.tar.gz

#changing path for installation 

 cd Ocsinventory-Unix-Agent-2.4.2/

#starting configuration 
 perl Makefile.PL

 apt-get install make -y

 apt-get ipmiutil -y

 apt-get install make-guile -y

 apt-get -f install -y

apt install php-pclzip make build-essential libdbd-mysql-perl libnet-ip-perl libxml-simple-perl php php-mbstring php-soap php-mysql php-curl php-xml php-zip


make install

#END
