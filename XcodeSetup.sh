DIR=$HOME/dotfiles
BASE=$HOME/dotfiles/Xcode
TARGET=$HOME/Library/Developer/Xcode

cd $BASE/FontAndColorThemes/
for scheme in * ; do
  [ $scheme = "." ] && continue
  [ $scheme = ".." ] && continue
  [ $scheme = ".DS_Store" ] && continue

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
