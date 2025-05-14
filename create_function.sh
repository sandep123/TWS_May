#!/bin/bash


<<function

this script for how to create function 


function


create_usr()  {

	username =$1


	 sudo useradd -m $username

	 echo "usr is created successfully"


}


create_usr "$1"
	

















