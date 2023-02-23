# AntiJamf program for MacOS (works with Catalina-Ventura on both Intel and Silicon, won't work on linux because its a MacOS MDM)
# Make sure homebrew is installed and you have installed 'pidof' (if not, run 'brew install pidof')

# ----------------------- #
#                         #
#  Written by cfgtsp5192  #
#                         #
# ----------------------- #

#!/bin/bash

J="jamf"
JH="jamfHelper"
JD="JamfDaemon"
JP="JamfProCommService"

while true
do
	Jamf=$(pidof $J)
	JamfHelper=$(pidof $JH)
	JamfDaemon=$(pidof $JD)
	JamfProCommService=$(pidof $JP)

	if [[ $Jamf == "" ]]
	then
		sleep 0.1
		continue
	else
		sudo kill -9 $Jamf > /dev/null
	fi

	if [[ $JamfHelper == "" ]]
	then
		sleep 0.1
		continue
	else
		sudo kill -9 $JamfHelper > /dev/null
	fi

	if [[ $JamfDaemon == "" ]]
	then
		sleep 0.1
		continue
	else
		sudo kill -9 $JamfDaemon > /dev/null
	fi

	if [[ $JamfProCommService == "" ]]
	then
		sleep 0.1
		continue
	else
		sudo kill -9 $JamfProCommService > /dev/null
	fi

	sleep 0.1
done
