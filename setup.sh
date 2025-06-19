#!/bin/bash

#Variable declaration
PACKAGE_NAME="httpd wget unzip"
SVC="httpd"
#URL="https://www.tooplate.com/zip-templates/2108_dashboard.zip"
#ARTIFACT_NAME="2108_dashboard.zip"
EXTRACTED_DIR="2108_dashboard"
TMP_DIR="/tmp/webfiles"

#Installing Dependencies $PACKAGE_NAME
echo "Installing Dependencies: $PACKAGE_NAME"
sudo yum install -y $PACKAGE_NAME > /dev/null

#Start & Enable Service
echo "Starting and Enabling $SVC service"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo


#Creating TMP dir
echo "Creating a tmp dir and extracting zip files and copying them to /var/html"
mkdir -p $TMP_DIR
cd $TMP_DIR || exit 
echo

wget $1 > /dev/null
unzip $2 > /dev/null
sudo cp -r $2/* /var/www/html/

#Bounce Service
echo "Restarting $SVC service"
systemctl restart $SVC
echo


#Remove tmp Files
echo "Removing tmp files"
rm -rf $TMP_DIR
echo

sudo systemctl status httpd
ls /var/www/html/