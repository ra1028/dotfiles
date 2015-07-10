if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ${HOME}/.sh.function ]; then
  . ${HOME}/.sh.function
fi

# source .profile
_read_file ".profile"

# source .bash_profile
_read_local ".bash_profile"
