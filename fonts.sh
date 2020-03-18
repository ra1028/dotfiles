DIR=$HOME/dotfiles
BASE=$HOME/dotfiles/fonts
TARGET=$HOME/Library/Fonts

cd $BASE
for font in *; do
  [ $font = "." ] && continue
  [ $font = ".." ] && continue
  [ $font = ".DS_Store" ] && continue

  if [[ -f $font ]]; then
    cp -f $PWD/$font $TARGET/
    suffix=""
  elif [[ -d $font ]]; then
    cp -af $PWD/$font $TARGET/
    suffix="/"
  fi
  echo "Created $font$suffix"
done
cd $DIR
