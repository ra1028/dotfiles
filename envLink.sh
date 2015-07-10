DIR=$HOME/dotfiles
FONTSDIR=$HOME/dotfiles/env/Fonts
TARGET=$HOME/Library/Developer/Fonts

cd $FONTSDIR;
for font in * ; do
  [ $font = "." ] && continue
  [ $font = ".." ] && continue
  [ $font = ".DS_Store" ] && continue

  if [[ -f $font ]] ; then
    ln -sf $PWD/$font $TARGET/
    suffix="@"
  elif [[ -d $font ]] ; then
    ln -sf $PWD/$font/ $TARGET/
    suffix="/"
  fi
  echo "Created $font$suffix"
done
cd $DIR;
