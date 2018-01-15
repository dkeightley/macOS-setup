#!/bin/bash

# Set laptop hostname and prevent it from being set via DHCP
echo -n "What hostname would you like to use? "
read hostname
sudo scutil --set HostName $hostname
sudo scutil --set LocalHostName $hostname
sudo scutil --set ComputerName "${hostname}"
