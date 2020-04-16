#!/bin/bash

#####################################################
#Script Name 	: lookup_script.sh 
#Description 	: Mac Address Lookup Code
#Input Argument : MAC address
#Name 		: Asif Iqbal
#Date		: 14th April 2020
########################################################


Path=$PWD

echo "Mac address given by user in parameter file is :" $MAC_ADD


#curl command to lookup the given MAC address

valid_chk=$(curl  "https://api.macaddress.io/v1?apiKey=$API_KEY&output=json&search=$MAC_ADD" | jq '.[]' | grep blockFound | cut -d":" -f2)


if [ $valid_chk != "true," ]
then
        echo "Given MAC Address $MAC_ADD does not belong to any registered block."
        exit 1;
fi

curl -s "https://api.macaddress.io/v1?apiKey=$API_KEY&output=json&search=$MAC_ADD" | jq '.vendorDetails' > $Path/MAC_Detail.txt 

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
