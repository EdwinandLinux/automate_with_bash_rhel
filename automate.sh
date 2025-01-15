# Scripting in Bash to automate Adding , Deleting , and Listing users and group in RHEL

#!/bin/bash

# Function to add a user
add_user() {
    read -p "Enter a username: " USERNAME
    sudo useradd "$USERNAME"
    # Check if the command perfectly executed
    if [ $? -eq 0 ]; then
        echo "User : $USERNAME was successfully added." 
    else 
        echo "User : $USERNAME was not successfully  added."
    fi
}