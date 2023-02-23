# AntiJamf program for MacOS (works with Catalina-Ventura on both Intel and Silicon, won't work on linux because its a MacOS MDM)
# Make sure homebrew is installed and you have installed 'pidof' (if not, run 'brew install pidof')
# Written by cfgtsp5192, have fun with your unrestricted device

#!/bin/bash

for (( ; ; )) do 
    sudo kill -9 $(pidof jamf) > /dev/null
    sudo kill -9 $(pidof jamfHelper) > /dev/null
    sudo kill -9 $(pidof JamfDaemon) > /dev/null
    sudo kill -9 $(pidof JamfProCommService) > /dev/null
done
