
function brewInstall () {
  brew tap Homebrew/bundle
  brew bundle
  brew cask cleanup
}

brew=`which brew 2>&1`
if [[ $? != 0 ]]; then
    $((ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)") 2>/dev/null)
    if [[ $? != 0 ]] ; then
        brewInstall ;
    else
       echo "Install Homebrew is failed." ;
    fi
else
    brewInstall ;
fi
