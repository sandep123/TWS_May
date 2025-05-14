
#!/bin/bash

create_usr() {
    read -p "Enter the username: " username
    read -s -p "Enter the password: " passwd
    echo  # to move to a new line after -s input

    if id "$username" &>/dev/null; then
        echo "User '$username' already exists."
    else
        sudo useradd -m "$username"
        echo "$username:$passwd" | sudo chpasswd
        echo "User and password have been created."
    fi
}

if [[ "$1" == "-c" || "$1" == "--create" ]]; then
    create_usr
fi

