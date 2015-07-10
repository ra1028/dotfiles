brew() {
  sh brewSetup.sh
}

symlink() {
  sh symLink.sh
}

env() {
  sh envLink.sh
}

karabiner() {
  sh karabinerSetup.sh
}

xcode() {
  sh XcodeLink.sh
}

atom() {
  sh atomSync.sh
}

install() {
  brew
  symlink
  env
  karabiner
  xcode
  atom
}

case $1 in
  'install' )
  install ;;
  'brew' )
  brew ;;
  'symlink' )
  symlink ;;
  'env' )
  env ;;
  'karabiner' )
  karabiner ;;
  'xcode' )
  xcode ;;
  'atom' )
  atom ;;
esac