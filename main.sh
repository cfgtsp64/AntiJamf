# AntiJamf program for MacOS (works with Catalina-Ventura on both Intel and Silicon)
# Make sure homebrew is installed and you have installed 'pidof' (if not, run 'brew install pidof')
# Written by cfgtsp5192, have fun with your unrestricted device

#!/bin/bash

sudo echo "true"

APP_0="jamf"
APP_1="JamfDaemon"
APP_2="JamfProCommService"

for (( ; ; )) do
	if [ $(pidof $APP_0) ] then
		sudo kill -9 $(pidof $APP_0) > /dev/null
	fi
	
	if [ $(pidof $APP_1) ] then
		sudo kill -9 $(pidof $APP_1) > /dev/null
	fi
	
	if [ $(pidof $APP_2) ] then
		sudo kill -9 $(pidof $APP_2) > /dev/null
	fi
done
