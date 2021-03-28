#!/bin/bash
#Numbers
n1="1"
n2="2"
n3="3"
n4="4"
n5="5"
n6="6"
n7="7"
n8="8"
n9="9"
y="Y"
n="n"
ip="IP"
host="HOST"
#Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
#ROOT PRIVILEGIES
if [[ $EUID -ne 0 ]]; then
        echo -e "$red You don't have Root privilegies, execute the script as root.$nc"
        exit 1
fi
#
function update() {
	echo -e "$cyan Updating ..."
	sleep 0.025
	cd packs
	echo -e "$cyan Updating Credit Card Bin Checker $red[$green✔$red]$nc"
	curl "https://raw.githubusercontent.com/TunisianEagles/quasar/master/packs/binchecker.py" --output binchecker.py >/dev/null 2>&1
	chmod +x binchecker.py
	sleep 0.025
	echo -e "$cyan Updating Email Validator $red[$green✔$red]$nc"
	curl "https://raw.githubusercontent.com/TunisianEagles/quasar/master/packs/email.sh" --output email.sh >/dev/null 2>&1
	chmod +x email.sh
	sleep 0.025
	echo -e "$cyan Updating Phone Number Validator $red[$green✔$red]$nc"
	curl "https://raw.githubusercontent.com/TunisianEagles/quasar/master/packs/phone.sh" --output phone.sh >/dev/null 2>&1
	chmod +x phone.sh 
	cd ..
	sleep 0.025
	echo -e "$cyan Starting The Script $red[$green✔$red]$nc"
	}
function Banner() {
echo -e "$blue		 █████   █    ██  ▄▄▄        ██████  ▄▄▄       ██▀███   "
echo "		▒██▓  ██▒ ██  ▓██▒▒████▄    ▒██    ▒ ▒████▄    ▓██ ▒ ██▒ "
echo "		▒██▒  ██░▓██  ▒██░▒██  ▀█▄  ░ ▓██▄   ▒██  ▀█▄  ▓██ ░▄█ ▒ "
echo "		░██  █▀ ░▓▓█  ░██░░██▄▄▄▄██   ▒   ██▒░██▄▄▄▄██ ▒██▀▀█▄   "
echo "		░▒███▒█▄ ▒▒█████▓  ▓█   ▓██▒▒██████▒▒ ▓█   ▓██▒░██▓ ▒██▒ "
echo "		░░ ▒▒░ ▒ ░▒▓▒ ▒ ▒  ▒▒   ▓▒█░▒ ▒▓▒ ▒ ░ ▒▒   ▓▒█░░ ▒▓ ░▒▓░ "
echo "		 ░ ▒░  ░ ░░▒░ ░ ░   ▒   ▒▒ ░░ ░▒  ░ ░  ▒   ▒▒ ░  ░▒ ░ ▒░ "
echo -e "		   ░   ░  ░░░ ░ ░   ░   ▒   ░  ░  ░    ░   ▒     ░░   ░  $nc"
echo -e "	$red[$green+$red]$cyan Coded by	 $nc : Belahsan Ouerghi $red[$green+$red]$nc"
echo -e "	$red[$green+$red]$cyan Contact$nc 	  : www.facebook.com/ouerghi.belahsan $red[$green+$red]$nc"
echo -e "	$red[$green+$red]$cyan Youtube 	$nc  : www.youtube.com/channel/UCv9HdZbTOo0iBG5X2qaqmqg $red[$green+$red]$nc"
echo -e "	$red[$green+$red]$cyan Github 	$nc  : www.github.com/TunisianEagles $red[$green+$red]$nc"
	}

function back() {
	read -p "	$(echo -e $red[$green+$red]$nc)$(echo -e $white Do You Wanna Back To Main Menu$nc) $(echo -e $red[$green$y$nc$white/$green$n$red]$nc) : " b
	if [ $b = y ]; then
	bash quasar.sh
	elif [ $b = Y ]; then
	bash quasar.sh
	elif [ $b = yes ]; then
	bash quasar.sh
	elif [ $b = YES ]; then
	bash quasar.sh
	elif [ $b = YEs ]; then
	bash quasar.sh
	elif [ $b = yES ]; then
	bash quasar.sh
	elif [ $b = YeS ]; then
	bash quasar.sh
	elif [ $b = no ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = NO ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = No ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = nO ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo	
	elif [ $b = N ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	elif [ $b = n ]; then
	echo
	echo -e "	$cyan Program Closed .. $nc"
	echo
	else
	echo ""
	echo -e "$red 404 Not Found ."
	echo ""
	fi
}

function directback(){
    bash webinfogete.sh
}

