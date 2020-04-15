#!/bin/bash

#####################################################
#Script Name 	: lookup_script.sh 
#Description 	: Mac Address Lookup Code
#Input Argument : MAC address
#Name 		: Asif Iqbal
#Date		: 14th April 2020
########################################################


#MAC_ADD='44:38:39:ff:ef:57'
Path=$PWD

echo "Mac address given by user is :" $MAC_ADD "\n"

#curl command to lookup the given MAC address

curl -s "https://api.macaddress.io/v1?apiKey=at_vqevcUk6R3hPVJiKZjj6Dn1jneVE3&output=json&search=$MAC_ADD" | jq '.vendorDetails' > $Path/MAC_Detail.txt 

res=$?

if [ "$res" != "0" ]
then
	echo "the curl command failed with : $res"
	exit 1;
fi

#Removing unwanted brackets from the output file.

sed -i 's/{//g; s/}//g; s/"//g' $Path/MAC_Detail.txt

echo "***************************************************************************"
echo "User details are below for MAC Address $MAC_ADD"

cat $Path/MAC_Detail.txt
