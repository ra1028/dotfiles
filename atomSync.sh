DIR=$HOME/dotfiles
ATOMDIR=$HOME/dotfiles/atom/.atom
TARGET=$HOME/.atom

[ ! -e $TARGET ] && mkdir $TARGET

cd $ATOMDIR
for file in * ; do
  [ $file = "." ] && continue
  [ $file = ".." ] && continue
  [ $file = ".DS_Store" ] && continue

  if [[ -f $file ]] ; then
    ln -sf $ATOMDIR/$file $TARGET/
    echo "Created ~/.atom/$file@"
  fi
done
cd $DIR

apm star --installed
apm stars --install
echo "Installed starred Atom packages."
