#!/bin/bash


<<Description
 this is script is use to create user usinf arg

Description


echo "=================Usr creation========="


echo "Enter usr name:"  username $1


echo "Enter usr passord:" password $2


sudo useradd -m "$username"


echo -e "$password\n$password" | sudo passwd "$username"

echo "=============== Usr created DONE!=========="



















