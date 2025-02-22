#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
RESET='\033[0m' # Reset to default color

#black-installer

clear

echo "Welcome my favourite Watermelon, Fried Chicken, and Cool Aid lovers!"
sleep 1
echo "Today you will have the chance to install Black."

read -p "You sure u wna install ts, icl ts pmo? (y/n): " proceed
if [[ "$proceed" != "y" ]]; then
     echo "Installation cancled by u nga, icl ts pmtfo. "
     exit 1
fi

#install script
echo -e "\033[0;31mDo Note Black is intented as a joke dont take it personally.\033[0m"
sleep 3
echo -e "\033[0;33mInstalling The Black Script...\033[0m"
sleep 8
echo -e "\033[0;32mInstall Complete! Extracting Black Script...\033[0m"
sleep 6
echo -e "\033[0;33mCompiling Black Script...\033[0m"
sleep 5
echo -e "\033[0;32mCompile Complete! Moving Black Files to /usr/local/bin/...\033[0m"
sleep 3
echo -e "${GREEN}Files have been moved. Making Black script executable...${RESET}"
sleep 2 
cat > /usr/local/bin/black-script.sh << EOF
#!/bin/bash

case "\$1" in
    help)
        echo "Black Commands - Available Options:"
        echo "  black help     - Show this help menu"
        echo "  black joke    - Tells a Black Joke"
        echo "  black uninstall    - Uninstalls Black (you shouldn't anyways)"
        ;;
    
    joke)
        echo "come up with a joke urself tf do i look like chatgpt? giving u ass jokes. What did the watermelon say to the black guy PLEASE DONT POUR KOOLAID ON ME AND EAT ME AND SLURP MEE UHH"
        ;;
    
    uninstall)
        echo "Uninstalling Black. Thank you for using! Hope to see you again!"
        sleep 3
        rm /usr/local/bin/black
        ;;

    *)
        echo "Unknown command. Use 'black help' for a list of available commands."
esac
EOF
chmod +x /usr/local/bin/black-script.sh
sudo mv /usr/local/bin/black-script.sh /usr/local/bin/black
sleep 8
echo -e "${GREEN}Installation Finish! Run ${BLUE}'black help' ${GREEN}for available commands!${RESET}"
