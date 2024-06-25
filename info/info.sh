#!/bin/bash

echo "System Info not implemented yet..."

countdown() {
    echo "Returning to options..."
    for i in $(seq 10 -1 1); do
        echo "$i..."
        sleep 1
    done
}

# Function for return to main menu
main_menu() {
    clear
    ./init.sh
}

# Execute countdown
countdown

# Return to main
main_menu
