#!/bin/bash
# Reset
CO='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White
clear
echo
echo
echo -e "\t${Red}sh0d4nC3TI connecting with shodan."
sleep 0.5
clear
echo
echo
echo -e "\t${Red}sh0d4nC3TI connecting with shodan.."
sleep 0.5
clear
echo
echo
echo -e "\t${Red}sh0d4nC3TI connecting with shodan..."
sleep 0.5
echo
echo
if [[ `shodan init $3 2>/dev/null` ]]
then
	shodan init $3 > /dev/null 2>&1
	echo -e "\t${Green}Successfully Initialized"
	band=true
else
	echo -e "\t${Red}Invalid API Key"	
	band=false
fi
sleep 2
clear

                                                                               
function picture() {                                                                                
    echo -e ${Green}
    echo
    echo
    echo                                                                             
	echo '                                      *(/,'                                  
	echo '                               (#####(////(#####*'                           
	echo '                            ###(*,,,,,,,,,,,,,,/###*'                        
	echo '                          (##/,,,,,,,.    ,,,,,***(##.'                      
	echo '             .#############(,,,,,             ,*****##('                     
	echo '          ###(/,,,,,,,,,,,,,,,,,                *****##'                    
	echo -e "       ,##(*,,,,,,,,,,,,,,,,,,,    ${Red}sh0d4nC3TI${Green}   ,****(#("                    
	echo '      ##(,,,,,,            ,,,,                 *////(#('                    
	echo '     ##/,,,,,                ,**               */////##'                     
	echo '    ##(,,,,,                   ***.          ///////##'                      
	echo -e "    ##/,,,,     ${Red}sh0d4nC3TI${Green}     ****///////////////##("                       
	echo '    ##/,,,,                    ///////////////(######.'                      
	echo '     ##*****                  /////(########(/**,,,*/((####/'                
	echo '     (##******              //////(####(*,,,,,,,,,,,,,,,,,/(###'             
	echo '       ##(******//.     /////////###(*,,,,,,,        .,,,,,,*/##('           
	echo '         ###(*////////////////#####*,,,,,                .*****/##.'         
	echo '            #####((/////(#####.##(,,,,,                    ,*****##'        
	echo '                  ./##(.       ##*,,,,                       ****(##'        
	echo -e "                              (#(,,,,.      ${Red}sh0d4nC3TI${Green}      *****##"        
	echo '                              (#(,,,,,                       ////*##'        
	echo '                               ##/****                      /////(##'        
	echo '                               ,##*****,                   //////##'         
	echo '                                .##(******              .//////(##'          
	echo '                                  (##(*****////*,.,//////////(##'            
	echo '                                    .###(*////////////////###('              
	echo '                                        (######(((((######,'                 
	echo
	echo
	echo '			Developed by anZuZ'
	echo '			#Passive Reconnaissance#'
	echo
	echo
	echo                                                                         
}

function usage() {
	picture
	echo -e "\tUsage ${Red}sh0d4nC3TI${Green} ${BIBlue}options${Green} file_containing_IPs-or-IP API_key"
	echo -e "\tOptions:"
	echo
	echo -e "\t\t- ${BIBlue}ports${Green} --> Discover open ports and each technology"
	echo -e "\t\t- ${BIBlue}vulns${Green} --> Discover vulnerabilities within de host"
	echo -e 
                                                                                
}  


if [[ $# -ne 3 ]]
then
	if [[ $# -eq 0 ]]
	then
		usage
	else
		usage
		echo -e "\t${Red}Wrong number of parameters${Green}"
	fi
else
	if [[ $band == "true" ]]
	then
		picture
		
		if [[ $1 == "ports" ]]
		then
			echo -e "\t${BIBlue}ports${Green} has been chosen by the user"
			echo
			if [[ -f $2 ]]
			then
				while read line
				do
					echo -e "${Green}Open ports: ${Red}$line${BIBlue}"
					shodan host $line | grep -E "tcp|udp"
					echo
					echo
				done < $2
			else
				echo -e "${Green}Open ports: ${Red}$2${BIBlue}"
				shodan host $2 | grep -E "tcp|udp"
			fi
			
		else
			if [[ $1 == "vulns" ]]
			then
				echo -e "\t${BIBlue}vulns${Green} has been chosen by the user"
				echo
				if [[ -f $2 ]]
				then
				
					while read line2
					do
						if [[ `shodan host $line2 | tr -s " " "\n" | grep "CVE" | tr -s "CVE" "\n"` ]]
						then
							hola=`shodan host $line2 | tr -s " " "\n" | grep "CVE" | tr -s " " " " | tr -s "CVE" "\n"`
							#IFS=$'\n'
							echo -e "${On_Purple}${BGreen}Vulneratibilies of ${BIWhite}$line2${Green}"
							echo
							for linea in $hola 
							do
							##########
								cve="CVE$linea"
								link="curl -s https://services.nvd.nist.gov/rest/json/cves/2.0?cveId=$cve"
								json=`curl -s $link`
								value=$(echo $json | jq -r '.vulnerabilities[0].cve.descriptions[0].value')
								echo -e "CVE ID: ${BIRed}$cve${Green}"
								echo -e "Description: ${BIBlue}$value${Green}"
								echo
								sleep 5
							done
							echo
							##########
						else
							echo -e "${On_Purple}${BGreen}No vulnerabilities found in ${BIBlue}$line2${Green}"
						fi
					done < $2
				else
					if [[ `shodan host $2 | tr -s " " "\n" | grep "CVE" | tr -s "CVE" "\n"` ]]
					then
						hola=`shodan host $2 | tr -s " " "\n" | grep "CVE" | tr -s " " " " | tr -s "CVE" "\n"`
						#IFS=$'\n'
						for linea in $hola 
						do
						##########
							cve="CVE$linea"
							link="curl -s https://services.nvd.nist.gov/rest/json/cves/2.0?cveId=$cve"
							json=`curl -s $link`
							value=$(echo $json | jq -r '.vulnerabilities[0].cve.descriptions[0].value')
							echo -e "CVE ID: ${BIRed}$cve${Green}"
							echo -e "Description: ${BIBlue}$value${Green}"
							echo
							sleep 5
						done
						##########
					else
						echo -e "\tNo vulnerabilities found"
					fi
				fi
			else
				echo -e "\tInvalid option"
			fi
		fi
	else
		usage
		echo
		echo -e "\t${Red}Invalid API Key${Green}"	
	fi
fi

                                                                            
