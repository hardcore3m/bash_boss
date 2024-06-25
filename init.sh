#!/bin/bash

# Função to print options list
print_menu() {
    echo "Select instructions category:"
    echo "1) Update system and applications"
    echo "2) Manage partitions and remote connections"
    echo "3) Create Default applications"
    echo "4) Check System status"
    echo "5) Exit"
}

# Function to select category
execute_command() {
    case $1 in
        1)
            clear
            chmod +x update/update.sh
            ./update/update.sh
            ;;
        2)
            clear
            echo "Managing partitions and remote connections:"
            ;;
        3)
            clear
            echo "Installing default applications"
            ;;
        4)
            clear
            echo "Checking system informations"
            ;;
        5)
            clear
            echo "Closing application..."
            clear
            exit 0
            ;;
        *)
            clear
            echo "Invalid Option. Try again."
            ;;
    esac
}

# Show Menu
print_menu

# Loop to keep asking for user input until a valid selection
while true; do
    
    read -p "Insert option: " choice
    if [[ $choice =~ ^[1-5]$ ]]; then
        execute_command $choice
        break
    else
        echo "Invalid Option. Try again."
    fi
    echo ""
done
