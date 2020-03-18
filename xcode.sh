DIR=$HOME/dotfiles
BASE=$HOME/dotfiles/xcode
TARGET=$HOME/Library/Developer/Xcode

cd $BASE/FontAndColorThemes/
for scheme in *; do
  [ $scheme = "." ] && continue
  [ $scheme = ".." ] && continue
  [ $scheme = ".DS_Store" ] && continue

  [ ! -e $TARGET/UserData/FontAndColorThemes/ ] && mkdir $TARGET/UserData/FontAndColorThemes

  if [[ -f $scheme ]]; then
    ln -sf $PWD/$scheme $TARGET/UserData/FontAndColorThemes/
    suffix="@"
  elif [[ -d $scheme ]]; then
    ln -sf $PWD/$scheme/ $TARGET/UserData/FontAndColorThemes/
    suffix="/"
  fi
  echo "Created $scheme$suffix"
done
cd $DIR
