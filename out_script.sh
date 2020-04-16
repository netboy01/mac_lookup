#!/bin/bash

#####################################################
#Script Name 	: out_script.sh 
#Description 	: script to build the docker image and run the docker image.
#Input Argument : MAC address in parameter file.
#Name 		: Asif Iqbal
#Date		: 14th April 2020
########################################################

clear

echo "***********Execution Started****************"
PARM1=$(cat parameter_file.txt | grep API_KEY | cut -d':' -f2)

read -p "Enter MAC address : " PARM2

if [ `echo $PARM2 | egrep "^([0-9a-fA-F]{2}:){5}[0-9a-fA-F]{2}$"` ]; then

    echo "This is a valid MAC address formate"	
else
    echo " MAC address $PARM2 is not valid."
    echo " Please try Again by giving valid MAC address e.g - 44:38:39:ff:ef:57"
    exit 1;
fi


echo " Building Docker image Started......."

echo " Please wait.. It may take few mint"

docker build -t demo_project . > /dev/null 2>&1

res=$?

if [ $res != '0' ]
then
	echo " Docker image build Failed"
 	exit 1; 	
fi
sleep 1

echo "Docker Image build sucesssfully"


#Command to run the docker image

docker run --name demo_name_$RANDOM  --env MAC_ADD=$PARM2 --env API_KEY=$PARM1 demo_project
