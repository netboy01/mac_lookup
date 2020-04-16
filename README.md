Question :-
Please write a program in the language of your choice to query the https://macaddress.io/ MAC address lookup API. 

Solution:-
I am useing below API to fetch the MAC address by useing API KEY

https://api.macaddress.io/v1?apiKey=<YOUR_API_KEY>&output=json&search=<MAC_ADDRESS>

For the security purpose I am useing API key as a parameter and this parameter will be fetch from parameter file.
We can restrict the param file permission.


File 1 : lookup_script.sh - contain the lookup script.

File 2 : out_script.sh - Contain the docker image creation script. It will ask you MAC address as an input.

File2  : DockerFile - Contain docker build details.

File4  : parameter_file.txt - Conatin the API KEY which need to search. 

************************************************************************************

Exectution Steps:-

Step1: Clone all the files to the local.

Step2: Run the below Command.

chmod +x out_script.sh

Step3: Execute the script.

./out_script.sh

Step4: Enter the MAC address. e.g :- 44:38:39:ff:ef:57


****************************************************************************************




