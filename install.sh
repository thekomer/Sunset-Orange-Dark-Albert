#!/bin/bash
BLUE="\033[0;36m"
RED="\033[0;31m"
NOCOLOUR="\033[0m"
THEMESLOCATION="/usr/share/albert/widgetsboxmodel/themes/"

read -p "Install Albert Sunset Orange theme? Answer Yes/No `echo $'\n> '`" yn

case $yn in
	[Yesyes]* )
        	# If the user selected yes, Lets copy the theme files over
		echo -e "${RED}  Deleting old theme file: ${NOCOLOUR}"
		echo -e "${BLUE}  sudo rm -f ${THEMESLOCATION}Sunset-Orange-Dark-Albert.qss ${NOCOLOUR}"
		sudo rm -f ${THEMESLOCATION}/Sunset-Orange-Dark-Albert.qss 2> /dev/null
		echo -e "${RED}  Installing new theme file: ${NOCOLOUR}"
		echo -e "${BLUE}  sudo cp ./theme/Sunset-Orange-Dark-Albert.qss [Albert themes folder] ${NOCOLOUR}"
		sudo cp ./theme/Sunset-Orange-Dark-Albert.qss ${THEMESLOCATION}
					# Thank the user ~
		echo -e "${RED}  Theme has been installed to [Albert themes folder] - Thank you! :-) ${NOCOLOUR}";;
	[Nono]* )
		echo -e "${BLUE}  You've chosen not to install the theme. :-(${NOCOLOUR}";;
	* ) echo "Please answer yes or no.";;
esac
