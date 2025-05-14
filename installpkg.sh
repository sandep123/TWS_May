#!/bin/bash


<<install

it will install the pkg which youwill give in arg


install




echo "isntalling $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y



echo "isntallalation hab been completed!"
