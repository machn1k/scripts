#!/bin/bash

# --------------------------------------------------------------------------
### Improvements for OS X
### REF- http://osxdaily.com/tag/defaults-write/
### REF- http://www.learningosx.com/101-ways-to-tweak-os-x-using-terminal/
# --------------------------------------------------------------------------

# Remove old font files
atsutil databases -remove

# Disable dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock

# Quit finder menu option
#defaults write com.apple.finder QuitMenuItem -bool YES

# Disable rubberbanding
defaults write -g NSScrollViewRubberbanding -int 0

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable Resume system-wide
defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Never go into computer sleep mode
#systemsetup -setcomputersleep Off > /dev/null

# Disable natural scrolling (Lion)
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Remove Dropbox’s green checkmark icons in Finder
#file=/Applications/Dropbox.app/Contents/Resources/check.icns
#[ -e "$file" ] && mv -f "$file" "$file.bak"
#unset file

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

###############################################################################
# Misc.
###############################################################################
### Keyboard / Mouse
# Set very fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 0

# Turn off keyboard illumination when computer is not used for 5 minutes
#defaults write com.apple.BezelServices kDimTime -int 30

# Always show scrollbars
#defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Disable smooth scrolling
#defaults write NSGlobalDomain NSScrollAnimationEnabled -bool false

### Display
# Enable subpixel font rendering on non-Apple LCDs
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

### Text
# Use plain text mode for new TextEdit documents
#defaults write com.apple.TextEdit RichText -int 0

# Select text in quicklook
defaults write com.apple.finder QLEnableTextSelection -bool TRUE && killall Finder

# Autosaving options
#defaults domains
defaults write com.apple.TextEdit AutosavingDelay -int 0 

## Apps other than TextEdit
#defaults write com.apple.Finder FXPreferredViewStyle icnv && killall Finder

###############################################################################
# Finder
###############################################################################
# Finder: show status bar
#defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show hidden files by default
#defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show/hide all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool false

# Empty Trash securely by default
#defaults write com.apple.finder EmptyTrashSecurely -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons
#defaults write com.apple.finder QuitMenuItem -bool true

# Finder: disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
#defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Disable opening and closing window animations
#defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Default Expose Animations
#defaults delete com.apple.dock expose-animation-duration; killall Dock

# Medium-Fast Mission Control Animations
#defaults write com.apple.dock expose-animation-duration -float 0.1

# Super Fast Mission Control Animations
defaults write com.apple.dock expose-animation-duration -float 0.1

###############################################################################
# Screenshots
###############################################################################
# Save screenshots to the downloads folder
defaults write com.apple.screencapture location -string "$HOME/Downloads"

# Save screenshots in JPG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "jpg"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

###############################################################################
# Dock
###############################################################################
# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove dock autohide delay time
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock

# Add spacer to dock
#defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}'

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

###############################################################################
# Safari
###############################################################################
# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Disable Safari’s thumbnail cache for History and Top Sites
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
###############################################################################
# Mac App Store #
###############################################################################
# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

###############################################################################
# iTunes #
###############################################################################
# Disable the iTunes store link arrows
defaults write com.apple.iTunes show-store-link-arrows -bool false

# Disable the Genius sidebar in iTunes
defaults write com.apple.iTunes disableGeniusSidebar -bool true

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Disable radio stations in iTunes
#defaults write com.apple.iTunes disableRadio -bool true

# Make ⌘ + F focus the search input in iTunes
# To use these commands in another language, browse iTunes’s package contents,
# open `Contents/Resources/your-language.lproj/Localizable.strings`, and look
# for `kHiddenMenuItemTargetSearch`.
#defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

###############################################################################
# Transmission.app #
###############################################################################
# Use `~/Documents/Torrents` to store incomplete downloads
#defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
#defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Documents/Torrents"

# Don’t prompt for confirmation before downloading
#defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false

# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false

###############################################################################
# Twitter.app #
###############################################################################
# Disable smart quotes as it’s annoying for code tweets
defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# Show the app window when clicking the menu icon
defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# Enable the hidden ‘Develop’ menu
defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

# Open links in the background
defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# Allow closing the ‘new tweet’ window by pressing `Esc`
defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# Show full names rather than Twitter handles
defaults write com.twitter.twitter-mac ShowFullNames -bool true

# Hide the app in the background if it’s not the front-most window
defaults write com.twitter.twitter-mac HideInBackground -bool true
##############################################################################

#clean
sudo periodic daily weekly monthly

for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "Terminal" "Transmission" "Twitter" "iCal" "iTunes"; do
  killall "$app" > /dev/null 2>&1
done

echo "Done. Some changes require a logout/restart."
