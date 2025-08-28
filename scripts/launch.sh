#!/bin/bash

# https://github.com/darkboss1bd/darkboss1bd-autophishing-boss-ak47

if [[ $(uname -o) == *'Android'* ]];then
	darkboss1bd-autophishing-boss-ak47_ROOT="/data/data/com.termux/files/usr/opt/darkboss1bd-autophishing-boss-ak47"
else
	export darkboss1bd-autophishing-boss-ak47_ROOT="/opt/darkboss1bd-autophishing-boss-ak47"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run darkboss1bd-autophishing-boss-ak47 type \`darkboss1bd-autophishing-boss-ak47\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $darkboss1bd-autophishing-boss-ak47_ROOT/auth/usernames.dat 2> /dev/null || {
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $darkboss1bd-autophishing-boss-ak47_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $darkboss1bd-autophishing-boss-ak47_ROOT
	bash darkboss1bd-autophishing-boss-ak47.sh
fi
