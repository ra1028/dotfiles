function brewInstall () {
  echo "Installing brew packages..."
  brew tap Homebrew/bundle
  brew bundle
  brew cask cleanup
  echo "Done"
}

brewdir=`which brew 2>/dev/null`
if [[ $brewdir == "" ]] ; then
  echo "Installing Homebrew..."
  script="curl -fsL https://raw.githubusercontent.com/Homebrew/install/master/install" 2>/dev/null)
  if [[ $script != "" ]] ; then
    ruby -e "$($script)"
    echo "Homebrew install succeeded"
    brewInstall
  else
    echo "Homebrew install failed"
    exit 1
  fi
else
  brew update
  brewInstall
fi
exit 0
