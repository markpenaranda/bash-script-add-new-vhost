#!/bin/bash
sudo -S
clear

echo "Add New Virtual Host beta"
echo "Enter Virtual Host Url :"
read v_url
echo "Enter Directory of the Repository :"
read repo_dir
echo "Enter IP address :"
read ip_addr
echo "Adding new Virtual Host.."
echo "Loading 2%...."
echo "<VirtualHost *:80>" >> /opt/lampp/etc/extra/httpd-vhosts.conf
echo "Loading 8%...."
echo "ServerName $v_url" >> /opt/lampp/etc/extra/httpd-vhosts.conf
echo "Loading 8%...."
echo " DocumentRoot $repo_dir" >> /opt/lampp/etc/extra/httpd-vhosts.conf
echo "Loading 15%...."
echo "<Directory />" >> /opt/lampp/etc/extra/httpd-vhosts.conf
echo "Loading 20%...."
echo "Options FollowSymLinks" >> /opt/lampp/etc/extra/httpd-vhosts.conf       
echo "Loading 25%...."
echo "AllowOverride All" >> /opt/lampp/etc/extra/httpd-vhosts.conf   
echo "Loading 30%...."
echo "</Directory>" >> /opt/lampp/etc/extra/httpd-vhosts.conf          
echo "Loading 40%...."
echo "<Directory $repo_dir>" >> /opt/lampp/etc/extra/httpd-vhosts.conf               
echo "Loading 45%...."
echo "Options Indexes FollowSymLinks Includes ExecCGI" >> /opt/lampp/etc/extra/httpd-vhosts.conf                   
echo "Loading 55%...."
echo "AllowOverride All" >> /opt/lampp/etc/extra/httpd-vhosts.conf  
echo "Loading 65%...."
echo "Order allow,deny" >> /opt/lampp/etc/extra/httpd-vhosts.conf       
echo "Loading 70%...."
echo "Allow from all" >> /opt/lampp/etc/extra/httpd-vhosts.conf              
echo "Loading 80%...."
echo "Require all granted" >> /opt/lampp/etc/extra/httpd-vhosts.conf                
echo "Loading 90%...."
echo "</Directory>" >> /opt/lampp/etc/extra/httpd-vhosts.conf              
echo "Loading 100%...."
echo "</VirtualHost>" >> /opt/lampp/etc/extra/httpd-vhosts.conf                 
echo "New Virtual Host Created!"
echo "Modifying /etc/hosts file"
echo "$ip_addr	$v_url" >> /etc/hosts
echo "Done!"
echo "New Repo and Virtual Host Added! :)..."          
echo "Restarting Apache Mysql"
lampp restart       

