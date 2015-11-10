function caskUpgrade () {
  for c in `brew cask list`; do ! brew cask info $c | grep -qF "Not installed" || brew cask install $c; done
  for c in /opt/homebrew-cask/Caskroom/*; do vl=(`ls -t $c`) && for v in "${vl[@]:1}"; do rm -rf "$c/$v"; done; done
  brew cask cleanup
}

function brewInstall () {
  echo "Installing brew packages..."
  brew tap Homebrew/bundle
  brew bundle
  brew cask cleanup
  echo "Done"
}

function brewSetup () {
  brewdir=`which brew 2>/dev/null`
  if [[ $brewdir == "" ]] ; then
    echo "Installing Homebrew..."
    script=`curl -fsL https://raw.githubusercontent.com/Homebrew/install/master/install 2>/dev/null`
    if [[ $script != "" ]] ; then
      ruby -e "$script"
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
}

case $1 in
  `` )
  brewSetup ;;
  'setup' )
  brewSetup ;;
  'install' )
  brewInstall ;;
  'caskupgrade' )
  caskUpgrade ;;
  * )
  echo "Invalid argument"
esac
