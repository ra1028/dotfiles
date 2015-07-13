
# TODO: WIPWIPWIPWIPWIPWIP

function brewInstall () {
  echo "Start brew setup"
  brew tap Homebrew/bundle
  brew bundle
  brew cask cleanup
  echo "Done"
}

brewInstall ;

# brew=`which brew 2>&1`
# if [[ $? != 0 ]]; then
#     echo "Installing Homebrew..."
#     $((ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)") 2>/dev/null)
#     echo "Done"
#     if [[ $? != 0 ]] ; then
#         brewInstall ;
#     else
#        echo "Install Homebrew is failed." ;
#     fi
# else
#     brewInstall ;
# fi
