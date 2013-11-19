#!/bin/sh
####################################################################################################
#
# More information: http://macmule.com/2011/09/08/how#to#map#drives#printers#based#on#ad#group#membership#on#osx/
#
# GitRepo: https://github.com/macmule/MapDrivesAndPrintersBasedOnADGroupMembershipOnOSX
#
# License: http://macmule.com/license/
#
####################################################################################################
#
#############
#
# Add all users to lpadmin
#
#############
sudo dseditgroup -o edit -n /Local/Default -a everyone -t group lpadmin
#############
#
# Mac OS X v10.6: Generating a Kerberos Ticket Granting Ticket (TGT) during an Active Directory user's initial login
# http://support.apple.com/kb/HT4100
#
#############
sudo cp /etc/authorization /etc/authorization.bak
sudo /usr/libexec/PlistBuddy -c "Add :rights:system.login.console:mechanisms:11 string "builtin:krb5store,privileged"" /etc/authorization


http://macmule.com/2011/09/08/how-to-map-drives-printers-based-on-ad-group-membership-on-osx/
