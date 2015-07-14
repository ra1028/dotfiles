function brewInstall () {
  brew tap Homebrew/bundle
  brew bundle
  brew cask cleanup
}

brewdir=`which brew 2>&1`
if [[ $brewdir == "" ]] ; then
  echo "Installing Homebrew..."
  success=`curl -L https://raw.githubusercontent.com/Homebrew/install/master/install 2>/dev/null` 2>/dev/null)
  if [[ $success != "" ]] ; then
    echo "Install succeeded"
    brewInstall
  else
    echo "Install failed"
    exit 1
  fi
else
  brewInstall
fi
exit 0
