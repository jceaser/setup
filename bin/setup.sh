defaults write com.apple.iTunes full-window -1
defaults write com.apple.appstore ShowDebugMenu -bool true
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.finder QuitMenuItem -bool true

chflags nohidden ~/Library/

defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

