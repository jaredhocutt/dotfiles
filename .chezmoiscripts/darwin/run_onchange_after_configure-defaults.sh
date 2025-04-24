#!/usr/bin/env zsh

defaults write -g AppleEnableSwipeNavigateWithScrolls -int 0
defaults write -g AppleInterfaceStyle -string Dark
defaults write -g AppleLanguages -array en-US
defaults write -g AppleLocale -string en_US
defaults write -g AppleMiniaturizeOnDoubleClick -int 0
defaults write -g AppleShowAllExtensions -int 1
defaults write -g InitialKeyRepeat -int 15
defaults write -g KeyRepeat -int 2
defaults write -g NSAutomaticCapitalizationEnabled -int 0
defaults write -g NSAutomaticDashSubstitutionEnabled -int 0
defaults write -g NSAutomaticPeriodSubstitutionEnabled -int 0
defaults write -g NSAutomaticQuoteSubstitutionEnabled -int 0
defaults write -g NSAutomaticSpellingCorrectionEnabled -int 0
defaults write -g NSAutomaticTextCorrectionEnabled -int 0
defaults write -g NSUserDictionaryReplacementItems '()'
defaults write -g com.apple.mouse.scaling -float 1.5
defaults write -g com.apple.swipescrolldirection -int 1
defaults write -g com.apple.trackpad.forceClick -int 0
defaults write -g com.apple.trackpad.scaling -float 0.875

defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock show-recents -int 0
defaults write com.apple.dock showAppExposeGestureEnabled -int 1
defaults write com.apple.dock mru-spaces -int 0

defaults write com.apple.spaces spans-displays -int 1

defaults write com.apple.WindowManager EnableStandardClickToShowDesktop -int 0
