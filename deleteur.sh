#!/bin/bash

# This script deletes a user from the system

Delete_usr() {
    echo "============= Deletion started ========================"
    read -p "Enter the username to delete: " username

    if ! id "$username" &>/dev/null; then
        echo "Error: User '$username' is not present"
        exit 1
    fi

    sudo userdel -r "$username"
    
    if [[ $? -eq 0 ]]; then
        echo "User '$username' has been deleted successfully!"
    else
        echo "Failed to delete user '$username'."
    fi
}

if [[ "$1" == "-d" || "$1" == "--delete" ]]; then
    Delete_usr
else
    echo "Usage: $0 -d | --delete"
fi









