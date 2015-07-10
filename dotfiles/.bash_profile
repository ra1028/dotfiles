if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ${HOME}/.sh.function ]; then
  . ${HOME}/.sh.function
fi
