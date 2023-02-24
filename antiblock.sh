# AntiJamf program for MacOS (works with Catalina-Ventura on both Intel and Silicon, won't work on linux because its a MacOS MDM)
# Make sure homebrew is installed and you have installed 'pidof' (if not, run 'brew install pidof')

# ----------------------- #
#                         #
#  Written by cfgtsp5192  #
#                         #
# ----------------------- #

#!/bin/bash

while true
do
	pidof jamf | xargs sudo kill -9
	pidof jamfHelper | xargs sudo kill -9
	pidof JamfDaemon | xargs sudo kill -9
	pidof JamfProCommService | xargs sudo kill -9

	sleep 0.1
done
