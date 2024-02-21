nano System_info.txt
echo "System info has been gathered. here is the summary:" > System_info.txt
date +"%m/%d/%Y %T %Z" >> System_info.txt
id -"un" >> System_info.txt
pwd >>System_info.txt
top -b -n 1 >> System_info.txt
df -h >> System_info.txt
cat System_info.txt
