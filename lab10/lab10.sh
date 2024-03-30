#!/bin/bash
read filename
if [$filename = ""]
then
	filename="phonebook.dat"
fi
green='\033[0;32m'
nc='\033[0m'
echo -e "${green}(1)starts or ends with jose${nc}"
grep -E "^Jose|Jose$" $filename
echo -e "${green}(2)contains a sequence of at least 27 upper or lower-case alphabetic characters${nc}"
grep -E "[a-zA-z]{27,}" $filename
echo -e "${green}(3)consists of 18 or more characters. characters can be anything, including alphabetic and numeric${nc}"
grep -E ".{18,}" $filename
echo -e "${green}(4)consists of exactly 10 characters. characters can be anything including alphabetic and numeric${nc}"
grep -E "^.{10}$" $filename
echo -e "${green}(5)contains a sequence between 6 and 8 upper or lower-case alphabetic characters. Then sequence must be seperated from the rest of the line by a space or tab on each side${nc}"
grep -E "\b[a-zA-Z]{6,8}\b)" $filename
echo -e "${green}(6)contains a local phone number${nc}"
grep -E "[1-9]{3}-[1-9]{4}" $filename
echo -e "${green}(7)contains a valid url on a line by itself${nc}"
grep -E "^http:\/\/www\..*\.com$" $filename
