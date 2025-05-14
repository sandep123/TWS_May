#!/bin/bash


<<remove

this script for remove pkg

remove



Remove_pkg() {

	echo "==================removepkg started======================"


	read -p "Enther the PKG name which you want to remove:" pkgname


	if command -v apt  &>/dev/null; then

		if ! dpkg -s &>/dev/null; then

			echo "Error: '$pkgname' Given pkg is not avaliabe :"
			exit 1;

		fi 

			sudo apt remove -y "$pkgname"


		elif ! command -v yum  &>/dev/null; then

				if ! rmp -q &>/dev/null; then                                                                                                                                                                                                                                                    echo "Error: '$pkgname' Given pkg is not avaliabe :"
                        exit 1;

                fi

                        sudo apt remove -y "$pkgname"


	   
		else
        		echo "No supported package manager found."
        		exit 1
   	 	fi

    			echo "Package '$pkgname' removed successfully (if no errors above)."


}

if [[ "$1" == "-r" || "$1" == "--remove" ]]; then 

	Remove_pkg

else

	echo "usage: $0 -d | --remove"


fi





