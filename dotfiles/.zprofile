eval "$(rbenv init -)"

if [ -f ${HOME}/.sh.function ]; then
  . ${HOME}/.sh.function
fi

# source .profile
_read_file ".profile"

# source .zprofile
_read_local ".zprofile"
