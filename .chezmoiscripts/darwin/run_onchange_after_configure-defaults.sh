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

# Bartender
defaults write com.surteesstudios.Bartender BartenderBarOnlyOnNotchScreens -int 1
defaults write com.surteesstudios.Bartender IfScreenIsBiggerDontHide -int 1
defaults write com.surteesstudios.Bartender IfScreenIsBiggerThanDontHide -float 1815.0
defaults write com.surteesstudios.Bartender SUEnableAutomaticChecks -int 1
defaults write com.surteesstudios.Bartender UpdateWelcomeMessageShowAgainB5 -int 1

# BetterDisplay
defaults write pro.betterdisplay.BetterDisplay SUEnableAutomaticChecks -int 1

# Caffeine
defaults write net.domzilla.caffeine CAActivateAtLaunch -int 1
defaults write net.domzilla.caffeine CADeactivateOnManualSleep -int 1
defaults write net.domzilla.caffeine CASuppressLaunchMessage -int 1

# GPG
defaults write org.gpgtools.common UseKeychain -string NO

# Handbrake
defaults write fr.handbrake.HandBrake HBUseSourceFolderDestination -int 1
defaults write fr.handbrake.HandBrake SUEnableAutomaticChecks -int 1

# Scroll Reverser
defaults write com.pilotmoon.scroll-reverser HideIcon -int 1
defaults write com.pilotmoon.scroll-reverser InvertScrollingOn -int 1
defaults write com.pilotmoon.scroll-reverser ReverseTrackpad -int 0
defaults write com.pilotmoon.scroll-reverser ReverseX -int 1
