#!/bin/bash


<< help

this is for creating user 


help



echo "=================Creation of usr=================="



read -p  "enter the usr name:" username



read -s -p "enter the passwd:" password

useradd -m "$username"
    echo "$username:$password" | chpasswd


echo "================ usr ID passwd is created===================="



