echo ---------------------
echo  -e "\033[32;5mStarting OpenVPN Install!\033[0m"
echo ----------------------

sudo apt-get upgrade

sudo apt-get update 

sudo apt install wget

sudo wget https://raw.githubusercontent.com/Nyr/openvpn-install/master/openvpn-install.sh 

sudo chmod 777 openvpn-install.sh

sudo bash openvpn-install.sh

echo ---------------------
echo  -e "\033[32;5mOpenVPN Installed!\033[0m"
echo ----------------------
#End