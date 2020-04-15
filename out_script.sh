#!/bin/bash

#####################################################
#Script Name 	: out_script.sh 
#Description 	: script to build the docker image and run the docker image.
#Input Argument : MAC address in parameter file.
#Name 		: Asif Iqbal
#Date		: 14th April 2020
########################################################

echo "***********Execution Started****************"

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


PARM1=$(cat parameter_file.txt)

#Command to run the docker image

docker run --name demo_name_$RANDOM  --env MAC_ADD=$PARM1 demo_project
