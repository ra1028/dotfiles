brew() {
  sh brewSetup.sh
}

symlink() {
  sh symLink.sh
}

env() {
  sh envSetup.sh
}

karabiner() {
  sh karabinerSetup.sh
}

xcode() {
  sh XcodeSetup.sh
}

atom() {
  sh atomSetup.sh
}

install() {
  brew
  if [ $? -eq 0 ] ; then
    symlink
    env
    karabiner
    xcode
    atom
  fi
}

case $1 in
  `` )
  install ;;
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
  * )
  echo "Invalid argument"
esac
