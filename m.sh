#banner
clear
echo -e "\e[1;92m ╦ ╦┬┌┐┌ \e[1;91m╔╦╗┌─┐┬─┐┌┬┐┬ ┬─┐ ┬"
echo -e "\e[1;92m ║║║││││  \e[1;91m║ ├┤ ├┬┘││││ │┌┴┬┘"
echo -e "\e[1;92m ╚╩╝┴┘└┘  \e[1;91m╩ └─┘┴└─┴ ┴└─┘┴ └─"
echo -e "\e[1;92m [+] Whatsapp: \e[1;91mwa.me/Resonex"
echo -e "\e[1;92m [+] Channel: \e[1;91m@cyber_snipper\e[1;97m"
echo ""

#isocheaker
read -p "Does WIN10TP.iso file exist in your Download folder? (Yes/No): " input
if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
   clear
   termux-wake-lock
   pkg install x11-repo -y
   pkg install qemu-system-x86_64 -y
   clear
   echo -e "\e[1;92m1] Allow Storage Permission to Termux."
   sleep 3
   clear
   read -p "Select Size of RAM in MB (e.g., 1GB = 1024): " ram
   echo "[+] Server is running...."
   echo -e "Your Server IP is:\e[1;91m 127.0.0.1:2"
   qemu-system-x86_64 -m $ram -cdrom /storage/emulated/0/Download/WIN10TP.iso -vnc 127.0.0.1:2

elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
   echo -e "\e[1;91m1. First download the WIN10TP.iso file from this link: \e[1;92mhttp://bit.ly/wintermux"
   echo "2. Put the WIN10TP.iso file into the Download folder."
   exit 2
else
   echo -e "\e[1;91mInvalid Option"
   exit 1
fi
