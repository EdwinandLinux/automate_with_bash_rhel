#!/bin/bash

# Filesystem Management task using Shell Scription
# to Create directory , setting Permissions , and Managind disk usage in RHEL

# Function to display the menu option
menu(){
    echo "Select an option"
    echo "1. Create Directory"
    echo "2. Set Permissions"
    echo "3. Check Disk Usage"
    echo "4. Exit"
}

# Fuction to create a directory
create_directory() {
    if [-z "S1"]; then
       echo "No argument was given"
       return
    fi
    if [-d "$1"]; then
       echo " The directory name: '$1' already exists."
    else
        sudo mkdir "$1"
        echo " The directory name: '$1' was successfully created."
    fi
}

# Function to set permissions
set_permissions() {
    if [ -z "$1" ]; then
       echo "No argument was given"
       return 
    fi
     
    read -p "Enter permissions (e.g., 755) " perms
    sudo chmod "perms" "$1"
    echo "Permissions for '$1' set to $perms"
}