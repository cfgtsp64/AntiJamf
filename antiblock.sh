# AntiJamf program for MacOS (make sure pidof is installed). written by cfgtsp5192

#!/bin/bash

while true
do
	pidof jamf | xargs sudo kill -9
	pidof jamfHelper | xargs sudo kill -9
	pidof JamfDaemon | xargs sudo kill -9
	pidof JamfProCommService | xargs sudo kill -9

	sleep 0.1
done
