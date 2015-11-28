##  Dependencies
- Xcode
- Command line tools
- Homebrew
- brew-bundle

## Help
- __Install Xcode and Command line tools ahead.__

- Commands  
  `sh make.sh` or `sh make.sh install`  // make all  settings  
  `sh make.sh homebrew`  // install [homebrew](http://brew.sh/) and [Homebrew-Cask](http://caskroom.io/), then download apps by Cask  
  `sh make.sh symlink`  // create symlinks  
  `sh make.sh env`  // setup the font files  
  `sh make.sh karabiner`  setup the [karabiner](https://pqrs.org/osx/karabiner/)  
  `sh make.sh xcode`  setup the Xcode  
  `sh make.sh atom`  setup the [atom](https://atom.io/)  

  `sh brewSetup.sh` or `sh brewSetup.sh setup` // same as `sh make.sh homebrew`  
  `sh brewSetup.sh install` // download apps by Homebrew-Cask  
  `sh brewSetup.sh caskupgrade` // upgrade the app downloaded by cask, if there is an update  


- Manually  
  __Alfred 2.app is still not available on brew cask.__  
  __So, download from following link.__  
  [Alfred 2](https://www.alfredapp.com/)  

  `/dotfiles/env/Ryoson.terminal`  
  Terminal setting -> profile -> read  

  `/dotfiles/env/BTTSettings`  
  BTT -> presets -> import
