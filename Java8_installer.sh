#!/bin/bash

echo -e $YELLOW"Purge IcedTea..."$ENDCOLOR
sudo apt-get --purge autoremove icedtea*
 
echo -e $YELLOW"Removing old config files..."$ENDCOLOR
sudo apt-get --purge autoremove openjdk*

sudo apt-get --purge autoremove java-common libservlet2.5-java libxerces2-java libxml-commons-external-java libxml-commons-resolver1.1-java tzdata-java
 
echo -e $YELLOW"Installing Java 8..."$ENDCOLOR
sudo add-apt-repository ppa:webupd8team/java

sudo apt-get update

sudo apt-get install oracle-java8-installer

echo -e $YELLOW"Script Finished!"$ENDCOLOR
