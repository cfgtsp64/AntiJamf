# AntiJamf program for MacOS (works with Catalina-Ventura on both Intel and Silicon, won't work on linux because its a MacOS MDM)
# Make sure homebrew is installed and you have installed 'pidof' (if not, run 'brew install pidof')
# Written by cfgtsp5192, have fun with your unrestricted device

#!/bin/bash

sudo echo "true"

APP_0="jamf"
APP_1="JamfDaemon"
APP_2="JamfProCommService"

for (( ; ; )) do
	sudo kill -9 $(pidof $APP_0) > /dev/null
	sudo kill -9 $(pidof $APP_1) > /dev/null
	sudo kill -9 $(pidof $APP_2) > /dev/null
done
