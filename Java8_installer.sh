#!/bin/bash

echo -e $YELLOW"Purge IcedTea..."$ENDCOLOR
sudo apt-get --purge autoremove icedtea* -y
 
echo -e $YELLOW"Removing old config files..."$ENDCOLOR
sudo apt-get --purge autoremove openjdk* -y

sudo apt-get --purge autoremove java-common libservlet2.5-java libxerces2-java libxml-commons-external-java libxml-commons-resolver1.1-java tzdata-java -y
 
echo -e $YELLOW"Installing Java 8..."$ENDCOLOR
sudo apt-add-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install openjdk-8-jdk -y
sudo apt-get install openjdk-8-jre -y

echo -e $YELLOW"Script Finished!"$ENDCOLOR
