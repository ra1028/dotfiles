DIR=$HOME/dotfiles
FONTSDIR=$HOME/dotfiles/env/Fonts
TARGET=$HOME/Library/Fonts

cd $FONTSDIR;
for font in * ; do
  [ $font = "." ] && continue
  [ $font = ".." ] && continue
  [ $font = ".DS_Store" ] && continue

  if [[ -f $font ]] ; then
    cp -f $PWD/$font $TARGET/
    suffix=""
  elif [[ -d $font ]] ; then
    cp -af $PWD/$font $TARGET/
    suffix="/"
  fi
  echo "Created $font$suffix"
done
cd $DIR;
