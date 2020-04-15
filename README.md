
File 1 : lookup_script.sh - contain the lookup script.

File 2 : out_script.sh - Contain the docker image creation script.

File2  : DockerFile - Contain docker build details.

File4  : parameter_file.txt - Conatin the MAC Address which need to search. 


Exectution Steps:-
Step1: Clone all the files to the local.

Step2: Run the below Command.

chmod +x out_script.sh

Step3: Execute the script.
./out_script.sh


For the security purpose I am useing the API_KEY genrated by the MAC website. I am not passing direct user name or password.
API_KEY can also be used by passing as a parameter to the script for the security purpose rather than writing in the script.


