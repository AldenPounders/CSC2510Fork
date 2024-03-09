#!/bin/bash
found=false
line=0
response="n"
valid=false
valid2=false
if [ $# ==  2 ]
then
	if [ -f $1 ]
	 then
		while read p
		do
			if [ "$p" = "$2" ]
			then
				found=true
				((line++))
			fi
		done < $1
		if [ $found = true ]
		then
			echo "username $2 was found on line $line "
		else
			while [ $valid = false  ]
			do
				echo "would you like to add $2 to $1"
				read $response
				case $response in
					"Y" | "y" | "yes" | "Yes")
						while [ $valid = false ]
						do
							echo "would you like the file to be alphabetized"
							read $response
							case $response in
								"Y" | "y" | "yes" | "Yes" | "N" | "n" | "no" | "No")
									valid=true
									;;
								*)
									echo "please try again"
									;;
							esac
						done
						;;
					"N" | "n" | "No" | "no")
						echo "exiting"
						valid=true
						;;
					*)
						echo "please try again"
						;;
				esac
			done
		fi		
	else
		echo "file is incorect"
	fi
else
	echo "wrong number of arguements"
fi
