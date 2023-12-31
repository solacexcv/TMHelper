# /bin/bash
# This script is Termux-helper Menu 
# Takes user input and redirects users to particular posts so that they can easily find posts.
# Author: Solacexcv
# Date: August 14, 2023
# /bin/bash


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
    type_animation "12] Oh-My-Shell"
    type_animation "13] Local2Internet"
    type_animation "14] StylishTermux"
    type_animation "15] SetFont"
    type_animation "16] HPhisher"
    type_animation "17] SpamX"
    type_animation "18] Seeker"
    type_animation "19] Banner-generator"
    type_animation "20] Kali-Linux"
    type_animation "21] Update TMHelper"
    type_animation "22] Uninstall TMHelper"
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
reset="\033[0m"

    case $choice in
        0)
          echo
          green_text_animation "Termux Helper Exited successfully."
          echo
          print_random_nice_message
        exit 0
            ;;
        1)
            type_animation "\nYou selected: MaxPhisher"
            type_animation "Please Wait MaxPhisher is Installing... "
            sleep 5
            clear
            cd $HOME
            mkdir maxphisher
            cd maxphisher
            rm -rf maxphisher.py
            wget https://raw.githubusercontent.com/KasRoudra/MaxPhisher/main/maxphisher.py && python3 maxphisher.py
            ;;
        2)
            type_animation "\nYou selected: PyPhisher"
            type_animation "Please Wait PyPhisher is Installing... "
            sleep 5
            clear
            cd $HOME
            mkdir pyphisher
            cd pyphisher
            rm -rf pyphisher.py
            wget https://raw.githubusercontent.com/KasRoudra/PyPhisher/main/pyphisher.py && python3 pyphisher.py
            ;;
        3)
            type_animation "\nYou selected: Clifty"
            type_animation "Please Wait Clifty is Installing... "
            sleep 5
            clear
            cd $HOME
            mkdir CLIFTY
            cd CLIFTY
            rm -rf clifty.sh
            wget https://raw.githubusercontent.com/Alygnt/Clifty/main/clifty.sh && chmod +x clifty.sh && bash clifty.sh
            ;;
        4)
            type_animation "\nYou selected: MaskPhish"
            type_animation "Please Wait MaskPhish is Installing... "
            sleep 5
            clear
            cd $HOME
            mkdir MASKPHISH
            cd MASKPHISH
            rm -rf maskphish.sh
            rm -rf FUNDING.yml
            wget https://raw.githubusercontent.com/jaykali/maskphish/master/.github/FUNDING.yml
            wget https://raw.githubusercontent.com/jaykali/maskphish/master/maskphish.sh && chmod +x maskphish.sh && bash maskphish.sh
            ;;
        5)
            type_animation "\nYou selected: CamPhish"
            type_animation "Please Wait CamPhish is Installing... "
            sleep 5
            clear
            cd $HOME
            apt-get -y install php openssh git wget
            git clone https://github.com/techchipnet/CamPhish
            cd CamPhish
            chmod +x camphish.sh
            bash camphish.sh
            ;;
        6)
            type_animation "\nYou selected: Ubuntu Shell"
            type_animation "Please Wait Ubuntu Shell is Installing... "
            sleep 5
            clear
            cd $HOME
            mkdir ubuntu-1
            rm -rf ubuntu.sh
            pkg install proot -y && wget https://raw.githubusercontent.com/MFDGaming/ubuntu-in-termux/master/ubuntu.sh && chmod +x ubuntu.sh && bash ubuntu.sh
            ;;
        7)
            type_animation "\nYou selected: Trace Exact Location"
            type_animation "Please Wait Trace Exact Location is Installing... "
            sleep 5
            clear
            cd $HOME
            git clone https://github.com/thewhiteh4t/seeker
            cd seeker
            chmod +x install.sh
            bash install.sh
            python3 seeker.py
            ;;
        8)
            type_animation "\nYou selected: Cam-Dumper"
            type_animation "Please Wait Cam-Dumper is Installing... "
            sleep 5
            clear
            cd $HOME
            git clone https://github.com/LiNuX-Mallu/CAM-DUMPER
            apt install git php wget curl jq
            cd CAM-DUMPER
            chmod +x camdumper.sh
            bash camdumper.sh
            ;;
        9)
            type_animation "\nYou selected: Track-IP"
            type_animation "Please Wait Track-IP is Installing... "
            sleep 5
            clear
            cd $HOME
            mkdir track-ip
            cd track-ip
            rm -rf trackip
            apt update && apt install git curl -y && wget https://raw.githubusercontent.com/htr-tech/track-ip/master/trackip && chmod +x trackip && bash trackip
            ;;
        10)
            type_animation "\nYou selected: BruteForce"
            type_animation "Please Wait BruteForce is Installing... "
            sleep 5
            clear
            cd $HOME
            rm -rf brute.py
            termux-setup-storage && pkg update && pkg upgrade && pkg install python && pkg install git && pkg install ruby && wget https://raw.githubusercontent.com/STLP-TEAM/FB-Brute/main/brute.py && pip install requests && pip install mechanize && python brute.py
            ;;
        11)
            type_animation "\nYou selected: Tool-X"
            type_animation "Please Wait Tool-X is Installing... "
            sleep 5
            clear
            cd $HOME
            apt update && pkg install git && git clone https://github.com/Error-4-You/Tool-X
            cd Tool-X
            chmod +x install
            bash install
            ;;
            12)
            type_animation "\nYou selected: Oh-My-Shell"
            type_animation "Please Wait Oh-My-Shell is installing... "
            sleep 5
            clear
            cd $HOME
            mkdir Oh-My-Shell
            cd Oh-My-Shell
            rm -rf install.sh
            bash -c "$(curl -fsSL https://raw.githubusercontent.com/KasRoudra/oh-my-shell/main/install.sh)"
            ;;
            13)
            type_animation "\nYou selected: Local2Internet"
            type_animation "Please Wait Local2Interner is installing... "
            sleep 5
            clear
            cd $HOME
            apt install wget curl unzip php ruby python nodejs -y && npm install http-server -g && git clone https://github.com/KasRoudra/Local2Internet && cd Local2Internet && chmod +x l2in.rb && ruby l2in.rb
            ;;
            14)
            type_animation "\nYou selected: StylishTermux"
            type_animation "Please Wait StylishTermux is installing... "
            sleep 5
            cd $HOME
            git clone https://github.com/KasRoudra/stylishtermux && cd stylishtermux && chmod +x * && bash install.sh
            ;;
            15)
            type_animation "\nYou selected: SetFont"
            type_animation "Please Wait SetFont is installing... "
            sleep 5
            clear
            cd $HOME
            git clone https://github.com/KasRoudra/setfont && cd setfont && chmod +x * && bash install.sh
            ;;
            16)
            type_animation "\nYou selected: HPhisher"
            type_animation "Please Wait HPhisher is installing... "
            sleep 5
            clear
            pkg update -y
pkg upgrade -y
pkg install git -y
cd $HOME
git clone https://github.com/Alygnt/HPhisher
cd HPhisher
bash hphisher.sh
            ;;
            17)
            type_animation "\nYou selected: SpamX"
            type_animation "Please Wait SpamX is installing... "
            sleep 5
            clear
            apt-get update -y
apt-get upgrade -y
pkg install python -y
pkg install python2 -y
pkg install git -y
pip install lolcat
cd $HOME
git clone https://github.com/noob-hackers/spamx
cd $HOME
ls
cd spamx
ls
bash setup
bash spamx.sh
            ;;
            18)
            type_animation "\nYou selected: Seeker"
            type_animation "Please Wait Seeker is installing... "
            sleep 5
            clear
            cd $HOME
            cd seeker
            python3 seeker.py
            git clone https://github.com/thewhiteh4t/seeker.git
            cd seeker
chmod +x install.sh
bash install.sh
python3 seeker.py
            ;;
            19)
            type_animation "\nYou selected: banner-generator"
            type_animation "Please wait banner-generator is installing... "
            sleep 5
            clear
            cd $HOME
            apt install python2
            git clone https://github.com/KasRoudra/banner-generator
            cd banner-generator
            chmod +x *
            bash requirements.sh
            python2 generator.py
            ;;
            20)
            type_animation "\nYou selected: Kali-Linux"
            type_animation "Please wait Kali-Linux is installing... "
            sleep 5
            clear
$HOME
    cd
    cd kali-linux
    bash start-kali.sh
    cd $PREFIX
    cd TMHelper
    chmod +x kali.sh
    bash kali.sh
;;
        22)
            

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
           21)
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
