ATOMDIR=$HOME/dotfiles/atom
TARGET=$HOME

atomfile=.atom
ln -sf $ATOMDIR/$atomfile/ $TARGET/
echo "Created $atomfile/"

apm star --installed
apm stars --install
echo "Installed starred package"
