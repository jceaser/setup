defaults write com.apple.iTunes full-window -1
defaults write com.apple.appstore ShowDebugMenu -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.finder QuitMenuItem -bool true

defaults -currentHost write .GlobalPreferences com.apple.mouse.swapLeftRightButton -bool false

chflags nohidden ~/Library/

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

defaults write com.apple.dock persistent-others -array-add '{"tile-data" = {"list-type" = 1;}; "tile-type" = "recents-tile";}'

killall Dock
