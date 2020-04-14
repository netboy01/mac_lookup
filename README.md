

Exectution Steps:-

File 1 - script.sh - contain the lookup script
File2 -DockerFile - Contain docker build details

Step1:
push both the file to local system

Step2:
Build the docker image
docker build -t demo_project .

Step3:
check that image has been craeted
docker images | grep demo_project

Step4
Run the below command to execute the code
sudo docker run --name demo_name --env MAC_ADD=44:38:39:ff:ef:57 demo_project


For the security purpose I am useing the API_KEY genrated by the MAC website. I am not passing direct user name or password.
API_KEY can also be used by passing as a parameter to the script for the security purpose rather than writing in the script.


