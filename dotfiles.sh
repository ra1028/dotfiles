TARGET=$HOME
DIR=$HOME/dotfiles
DOTFILESDIR=$HOME/dotfiles/dotfiles

cd $DOTFILESDIR;
for dotfile in .?*; do
  [ $dotfile = "." ] && continue
  [ $dotfile = ".." ] && continue
  [ $dotfile = ".DS_Store" ] && continue

  if [[ -f $dotfile ]]; then
    ln -sf $PWD/$dotfile $TARGET/
    suffix="@"
  elif [[ -d $dotfile ]]; then
    ln -sf $PWD/$dotfile/ $TARGET/
    suffix="/"
  fi
  echo "Created $dotfile$suffix"
done
cd $DIR;
