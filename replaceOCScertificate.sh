#!/bin/bash
#date :01-01-21
#purpose:ocs installation in linux
#author :amit rikhari

 
 #to get configuration files  
wget https://raw.githubusercontent.com/Ramprakashp9/OCS/main/CaCert.pem

#coping predefned configured files
cp -f /opt/CaCert.pem  /etc/ocsinventory/CaCert.pem


#END
