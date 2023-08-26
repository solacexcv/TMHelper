# /bin/bash
# This script is Termux-helper Menu 
# Takes user input and redirects users to particular posts so that they can easily find posts.
# Author: SaadMaqsood 
# Site : learnTermux.tech
# Date: August 14, 2023


#!/bin/bash

function type_animation() {
    local text="$1"
    local interval=0.000001

    for ((i = 0; i < ${#text}; i += 3)); do
        echo -n -e "\033[1;32m${text:$i:3}\033[0m"
        sleep $interval
    done
echo
}

function red_exit() {
    echo -e "\033[1;31m0] Exit\033[0m"
}

function green_text_animation() {
    local text="$1"
    echo -e -n "\033[1;42;97m$text\033[0m"
}


# Define an array of positive messages
positive_messages=(
    "Have a fantastic day!"
    "You've got this! Keep going."
    "Spread positivity wherever you go."
    "Believe in yourself and your dreams."
    "You are capable of achieving great things."
    "Your positive attitude can change the world."
    "Embrace challenges as opportunities for growth."
    "Remember to smile and brighten someone's day."
    "Your efforts will pay off in the long run."
    "You're not alone – reach out if you need support."
    "Your potential is limitless. Keep pushing forward."
    "You have the power to make a difference."
    "Challenges are stepping stones to success."
    "Today is a gift; that's why it's called the present."
    "Your perseverance will lead to success."
    "Radiate positivity and inspire those around you."
    "The best way to predict the future is to create it."
    "You possess the qualities needed to achieve greatness."
    "Success starts with a positive mindset and hard work."
    "Your journey is uniquely yours – embrace it fully."
    "You are a beacon of light in the lives of others."
    "Small steps forward still lead to progress."
    "Believe in the magic within you."
    "Your dreams are valid and achievable."
    "You have the strength to overcome any challenge."
    "Your presence makes a positive impact."
    "Keep your face to the sunshine and shadows will fall behind you."
)

# Define a function to print a random positive message in bold
print_random_nice_message() {
    # Generate a random index within the range of the array
    random_index=$((RANDOM % ${#positive_messages[@]}))

    # Print the randomly selected message in bold
    echo -e "\033[1m${positive_messages[random_index]}\033[0m"
}



display_menu() {
    clear

    type_animation "   ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ █░░█ █░█"
    type_animation "   ░▒█░░ █▀▀ █▄▄▀ █░▀░█ █░░█ ▄▀▄"
    type_animation "   ░▒█░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ░▀▀▀ ▀░▀"
    echo -e "\033[1;32m************************************\033[0m"
     echo -e "\033[33;5m    Solacexcv\033[0m \033[32mHelper Menu\033[0m"
    echo -e "\033[1;32m************************************\033[0m"
    type_animation "Please select an option:"
    type_animation "1] MaxPhisher"
    type_animation "2] PyPhisher"
    type_animation "3] Clifty"
    type_animation "4] MaskPhish"
    type_animation "5] CamPhish"
    type_animation "6] Ubuntu Shell"
    type_animation "7] Trace Exact Location"
    type_animation "8] Cam-Dumper"
    type_animation "9] Track-IP"
    type_animation "10] BruteForce[PASS: TEAM STLP]"
    type_animation "11] Tool-X"
    type_animation "12] Update TMHelper"
    type_animation "13] Uninstall TMHelper"
    red_exit
}



# Main loop
while true; do
    display_menu
    green_text_animation ">> Select an Option --> "
    echo -n " "
    read choice


bold="\033[1m"
red_bg="\033[41m"

    case $choice in
        0)
          echo
          green_text_animation "Termux Helper Exited successfully."
          echo
          print_random_nice_message
        exit 0
            ;;
        1)
            echo "You selected: MaxPhisher"
            echo "You are being redirected to MaxPhisher posts... "
            wget https://raw.githubusercontent.com/KasRoudra/MaxPhisher/main/maxphisher.py && python3 maxphisher.py
            ;;
        2)
            echo "You selected: PyPhisher"
            echo "You are being redirected to PyPhisher posts... "
            wget https://raw.githubusercontent.com/KasRoudra/PyPhisher/main/pyphisher.py && python3 pyphisher.py
            ;;
        3)
            echo "You selected: Clifty"
            echo "You are being redirected to Clifty posts... "
            git clone https://github.com/Alygnt/Clifty
            echo -e "\n${red_bg}${bold}Exit TMHelper and Open clifty directory and command chmod +x clifty.sh to run the tool command bash clifty.sh${reset}\n"
            ;;
        4)
            echo "You selected: MaskPhish"
            echo "You are being redirected to MaskPhish posts... "
            xdg-open "https://github.com/jaykali/maskphish?&max-results=7"
            ;;
        5)
            echo "You selected: CamPhish"
            echo "You are being redirected to CamPhish posts... "
            xdg-open "https://github.com/techchipnet/CamPhish?&max-results=7"
            ;;
        6)
            echo "You selected: Ubuntu Shell"
            echo "You are being redirected to Ubuntu Shell Gathering posts... "
            xdg-open "https://github.com/MFDGaming/ubuntu-in-termux.git?&max-results=7"
            ;;
        7)
            echo "You selected: Trace Exact Location"
            echo "You are being redirected to Trace Exact Location posts... "
            xdg-open "https://github.com/thewhiteh4t/seeker.git?&max-results=7"
            ;;
        8)
            echo "You selected: Cam-Dumper"
            echo "You are being redirected to Cam-Dumper posts... "
            xdg-open "https://github.com/LiNuX-Mallu/CAM-DUMPER.git?&max-results=7"
            ;;
        9)
            echo "You selected: Track-IP"
            echo "You are being redirected to Track-IP posts... "
            xdg-open "https://github.com/khansaad1275/track-ip?&max-results=7"
            ;;
        10)
            echo "You selected: BruteForce"
            echo "You are being redirected to BruteForce posts... "
            xdg-open "https://github.com/STLP-TEAM/FB-Brute?&max-results=7"
            ;;
        11)
            echo "You selected: Tool-X"
            echo "You are being redirected to Tool-X posts... "
            xdg-open "https://github.com/Error-4-You/Tool-X?&max-results=7"
            ;;
        13)
            

bold="\033[1m"
green_bg="\033[42m"
red_bg="\033[41m"
reset="\033[0m"

# Clear the screen

clear
echo " "
# Print title with red background and bold text
echo -e "${red_bg}${bold} Uninstall Page: TMHelper ${reset}"

# Print the message with bold points
echo -e "${bold}Dear User,${reset}"

# Print the introductory part
echo -e "We understand that you're considering uninstalling TMHelper, but we'd like to take a moment to highlight the valuable advantages it brings to your experience.\n"

# Print the key benefits
echo -e "Here's why TMHelper is an asset that you might want to keep:\n"

echo -e -n "${bold}1. ${green_bg}Powerful and Comprehensive:${reset}"
echo -e "TMHelper is not just another program; it's a power tool designed to provide you with a curated selection of hacking, penetration testing, and programming tools. These tools are organized into us"

echo -e -n "${bold}2. ${green_bg}Efficiency and Ease of Use:${reset}"
echo -e "TMHelper streamlines your workflow by offering a simple menu that allows you to quickly install new and updated scripts. No more hunting for tools or dealing with complex installations – Termux"

echo -e -n "${bold}3. ${green_bg}Security Matters:${reset}"
echo -e "Your system's security is our priority. TMHelper has been carefully designed and tested to ensure that it won't cause harm to your system. You can confidently explore and experiment without worry."

# Print the encouragement to keep Termux Helper
echo -e "\nWe encourage you to reconsider uninstalling TMHelper. It's a versatile resource that can empower you in your coding, testing, and exploration endeavors.\n"

# Prompt user for input with red background
echo -e -n "${red_bg}${bold}Type 'uninstall' to proceed with uninstallation or press Enter to keep TMHelper:"
read -p "" user_input
echo -e "${reset}"
# Check user's input and respond accordingly
if [[ "$user_input" == "uninstall" ]]; then
    echo "Uninstalling..."
    bash $PREFIX/TMHelper/uninstall.sh
    break
else
    echo "Thank you for choosing to keep TMHelper. It's an investment in your productivity and growth."
fi





            
            ;;
           12)
        type_animation "WAIT WE ARE UPDATING TMHelper..."
        cd /data/data/com.termux/files/usr/TMHelper/
        git reset --hard
        git pull --force
        cd
        type_animation "UPDATE COMPLETE."

        
        ;;
    *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac

    read -p "Press Enter to continue or 0 to EXIT: " lastchoice

if [ "$lastchoice" == "0" ]; then
    echo
    green_text_animation "TMHelper Exited successfully."
    echo
    print_random_nice_message
    exit 0
fi
    
done
