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

# Function to add a group
add_group() {
    read -p "Enter the group name: " GROUP_NAME
    sudo groupadd "$GROUP_NAME"
    # Check if the group name was created
    if [$? -eq 0 ]; then
        echo "Group Name: $GROUP_NAME was successfully created."
    else
        echo "Group Name: $GROUP_NAME was not successfully created."
    fi
}
