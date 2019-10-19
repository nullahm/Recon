#!/bin/sh

COLUMNS=$(tput cols) 

LINE1="  _   _       _ _            _                        _       _               _ "
LINE2=" | \ | |     | | |     /\   | |                      | |     | |             | |"
LINE3=" |  \| |_   _| | |    /  \  | |__  _ __ ___   ___  __| | __ _| |__   __ _  __| |"
LINE4=" | . \` | | | | | |   / /\ \ | '_ \| '_ \` _ \ / _ \/ _\` |/ _\` | '_ \ / _\` |/ _\` |"
LINE5=" | |\  | |_| | | |  / ____ \| | | | | | | | |  __/ (_| | (_| | |_) | (_| | (_| |"
LINE6=" |_| \_|\__,_|_|_| /_/    \_\_| |_|_| |_| |_|\___|\__,_|\__,_|_.__/ \__,_|\__,_|"
                                                                                
printf "%*s\n" $(((${#LINE1}+$COLUMNS)/2)) "$LINE1"
printf "%*s\n" $(((${#LINE2}+$COLUMNS)/2)) "$LINE2"
printf "%*s\n" $(((${#LINE3}+$COLUMNS)/2)) "$LINE3"
printf "%*s\n" $(((${#LINE4}+$COLUMNS)/2)) "$LINE4"
printf "%*s\n" $(((${#LINE5}+$COLUMNS)/2)) "$LINE5"
printf "%*s\n" $(((${#LINE6}+$COLUMNS)/2)) "$LINE6"                                                                                


LINE1="**********************************************************************"
LINE2="*                              Recon Tool                            *"
LINE3="**********************************************************************"
printf "\n\n"

printf "%*s\n" $(((${#LINE1}+$COLUMNS)/2)) "$LINE1"
printf "\e[32m%*s \e[0m \n" $(((${#LINE2}+$COLUMNS)/2)) "$LINE2"
printf "%*s\n" $(((${#LINE3}+$COLUMNS)/2)) "$LINE3"

print_options() {
	printf "\n\n"

	printf " Available Options:\n"
	printf " __________________\n\n"
	printf " 1. Directory Bruteforce\n"
	printf " 2. Subdomain Bruteforce\n"
	printf " 3. Extract links from Page\n"
	printf " 4. Extract links from JS Files\n"
	printf " 5. Search Wayback urls\n"
	printf " 6. Search for Interesting Keywords & Comments\n"
	printf " 7. Search for Login Page\n"
	printf " 8. Identify implemented Web technology\n"
	printf "\n99. Exit\n"
	printf "\n\n"
	printf " Please Enter your choice: "
	printf ""
}

source ./options.sh

operation99() {
	printf "Thanks for using the tool. Have a Nice Day!\n\n"
	exit
}

while :
do
	print_options
	read selectedOption
	printf "\n\n"
	
	case $selectedOption in
	1)
		operation1
		break
		;;
	2)
		operation2
		break
		;;
	3)
		operation3
		break
		;;
	4)
		operation4
		break
		;;		
	5)
		operation5
		break
		;;		
	6)
		operation6
		break
		;;		
	7)
		operation7
		break
		;;		
	8)
		operation8
		break
		;;		
	99)
		operation99
		break
		;;
	*)
		echo "Invalid Choice"
		;;
	esac
	
done
