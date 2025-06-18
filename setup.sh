#Start & Enable Service
echo "Starting and Enabling HTTPD"
sudo systemctl start httpd
sudo systemctl enable httpd
echo


#Creating TMP dir
echo "Creating a tmp dir and extracting zip files and copying them to /var/html"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2108_dashboard.zip > /dev/null
unzip 2108_dashboard.zip > /dev/null
sudo cp -r 2108_dashboard/* /var/www/html/

#Bounce Service
echo "Restarting HTTPD service"
systemctl restart httpd


#Remove tmp Files
echo "Removing tmp files"
rm -rf /tmp/webfiles
echo

sudo systemctl status httpd
ls /var/www/html/