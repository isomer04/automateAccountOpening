echo "What is your name: "
read userName
sudo useradd -m $userName
sudo echo "$userName:welcome1" | chpasswd
chage -d 0 $userName

groupadd analyst
usermod -a -G analyst $userName 
mkdir /home/$userName/Projects /home/$userName/Daily_Records /home/$userName/Share /home/$userName/Documents
#touch /home/$userName/Daily_Records/readme.txt
echo "Daily drops will be placed in the folder of the most up to date financial records for the institution. It is their responsibility to rename them" >> /home/$userName/Daily_Records/readme.txt
chmod 700 /home/$userName/Daily_Records
chmod 740 /home/$userName/Share
echo "Welcome $userName and have a great day"
