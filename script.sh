#!/bin/sh

#####################################################
#Script Name 	: mac_addess_lookup.sh 
#Description 	: Mac Address Lookup Code
#Input Argument : MAC address
#Name 		: Asif Iqbal
#Date		: 14th April 2020
########################################################

Mac_address=$MAC_ADD


echo "Mac adress is :" $Mac_address "\n"

curl  "https://api.macaddress.io/v1?apiKey=at_vqevcUk6R3hPVJiKZjj6Dn1jneVE3&output=json&search=$Mac_address" | jq '.' 

res=$?

if [ "$res" != "0" ]
then
	echo "the curl command failed with : $res"

fi

