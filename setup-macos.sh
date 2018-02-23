#!/bin/bash

## Setup macOS settings that aren't available via System Preferences

# Disable boot sound effects
sudo nvram SystemAudioVolume=" "

# Save screenshots to the Pictures/Screenshots directory
if [ ! -d ${HOME}/Pictures/Screenshots ]
  then
    mkdir ${HOME}/Pictures/Screenshots
fi
defaults write com.apple.screencapture location -string "${HOME}/Pictures/Screenshots"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "jpg"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
#defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0.25

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

#printf "System - Reveal IP address, hostname, OS version, etc. when clicking the login window clock\n"
#sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

printf "System - Require password immediately after sleep or screen saver begins\n"
sudo defaults write com.apple.screensaver askForPassword -int 1
sudo defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "System - Automatically restart if system freezes\n"
systemsetup -setrestartfreeze on

printf "Keyboard - Automatically illuminate built-in MacBook keyboard in low light\n"
sudo defaults write com.apple.BezelServices kDim -bool true

printf "Keyboard - Set a fast keyboard repeat rate\n"
sudo defaults write NSGlobalDomain KeyRepeat -int 0

printf "Keyboard - Turn off keyboard illumination when computer is not used for 30 minutes\n"
sudo defaults write com.apple.BezelServices kDimTime -int 30

printf "Trackpad - Enable tap to click for current user and the login screen\n"
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#printf "Bluetooth - Increase sound quality for headphones/headsets\n"
#sudo defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

printf "Finder - Show hidden files\n"
sudo defaults write com.apple.finder AppleShowAllFiles -bool true

printf "Finder - Show filename extensions\n"
sudo defaults write NSGlobalDomain AppleShowAllExtensions -bool true

printf "Finder - Disable the warning when changing a file extension\n"
sudo defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

printf "Finder - Show path bar\n"
sudo defaults write com.apple.finder ShowPathbar -bool true

printf "Finder - Show status bar\n"
sudo defaults write com.apple.finder ShowStatusBar -bool true

printf "Finder - Display full POSIX path as window title\n"
sudo defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

printf "Finder - Use list view in all Finder windows\n"
sudo defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

#printf "Finder - Allow quitting via COMMAND+Q -- Doing so will also hide desktop icons\n"
#sudo defaults write com.apple.finder QuitMenuItem -bool true

printf "Finder - Disable the warning before emptying the Trash\n"
sudo defaults write com.apple.finder WarnOnEmptyTrash -bool false

printf "Finder - Allow text selection in Quick Look\n"
sudo defaults write com.apple.finder QLEnableTextSelection -bool true

printf "TextEdit - Use plain text mode for new documents\n"
sudo defaults write com.apple.TextEdit RichText -int 0

printf "TextEdit - Open and save files as UTF-8 encoding\n"
sudo defaults write com.apple.TextEdit PlainTextEncoding -int 4
sudo defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

printf "Disk Utility - Enable debug menu\n"
sudo defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
sudo defaults write com.apple.DiskUtility advanced-image-options -bool true

printf "Time Machine - Prevent prompting to use new hard drives as backup volume\n"
sudo defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

printf "Printer - Expand print panel by default\n"
sudo defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

printf "Printer - Automatically quit printer app once the print jobs complete\n"
sudo defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Check for software updates daily, not just once per week"
sudo defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

echo "Disable Photos.app from starting everytime a device is plugged in"
sudo defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

echo "Show dotfiles in Finder by default"
sudo defaults write com.apple.finder AppleShowAllFiles TRUE

echo "Enable snap-to-grid for icons on the desktop and in other icon views"
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

echo "Disable smart quotes as they’re annoying when typing code"
sudo defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

echo "Disable smart dashes as they’re annoying when typing code"
sudo defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
sudo defaults write com.apple.dock launchanim -bool false

# Show all processes in Activity Monitor
sudo defaults write com.apple.ActivityMonitor ShowCategory -int 0

# The airport command is handy
sudo ln -s /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport /usr/local/bin/airport

# Setup neovim config
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim
