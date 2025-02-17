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
    if [ $? -eq 0 ]; then
        echo "Group Name: $GROUP_NAME was successfully created."
    else
        echo "Group Name: $GROUP_NAME was not successfully created."
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter the nmae of the user to delete: " DEL_USER
    sudo userdel "$DEL_USER"
    # Check if the user was deleted
    if [ $? -eq 0 ]; then
        echo " User: $DEL_USER was successfully deleted."
    else
        echo "User: $DEL_USER was not successfully deleted."
    fi

}

# Function to delete a group
delete_group() {
    read -p "Enter the group name to delete" DEL_GROUP_NAME
    sudo groupdel "$DEL_GROUP_NAME"
    # Check if the group name was deleted
    if [ $? -eq 0 ]; then 
        echo "Group Name:$DEL_GROUP_NAME was successfully deleted."
    else
        echo "Group Name:$DEL_GROUP_NAME was not successfully deleted."
    fi
}

# Function to list users
list_users() {
    echo "List all users"
    cut -d: -f1 /etc/passwd
}

# Function to list groups
list_groups() {
    echo "List all groups"
    cud -d: -f1 /etc/group
}

# Menu
while true; do 
    echo " Choose an option from the Menu...."
    echo "1. Add User"
    echo "2. Add Group"
    echo "3. Delete User"
    echo "4. Delete Group"
    echo "5. List Users"
    echo "6. List Groups"
    echo "7. Exit"
    read -p "Enter your choice between 1-7" choice
    case $choice in 
         1) add_user ;;
         2) add_group ;;
         3) delete_user ;;
         4) delete_group ;;
         5) list_users ;;
         6) list_groups ;;
         7) echo "Existing...."; 
         break;;
         *) echo "Invalid choice, please try again" ;;
         esac
         echo
         done

