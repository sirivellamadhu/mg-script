sudo clear
wget https://minergate.com/download/deb-cli -O mg-cli.deb
sudo dpkg -i mg-cli.deb
sudo touch /usr/local/bin/mgsetup.sh
echo 'sleep 5m\nwhile true; do\nwget -q --spider http://google.com\nif [ $? -eq 0 ]; then\n\tminergate-cli -user madhuurs2@gmail.com -xmr\nelse\m\tsleep 5m\nfi\ndone'  > temp && sudo cp -f temp /usr/local/bin/mgsetup.sh
echo '@reboot bash /usr/local/bin/mg.sh' > crontab.txt
crontab crontab.txt
nohup minergate-cli -user madhuurs2@gmail.com -xmr &
