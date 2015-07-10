ATOMDIR=$HOME/dotfiles/atom
TARGET=$HOME

ln -sf $ATOMDIR/.atom/ $TARGET/
apm star --installed
apm stars --install
