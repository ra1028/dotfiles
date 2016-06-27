if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ${HOME}/.sh.function ]; then
  . ${HOME}/.sh.function
fi

[[ -s "/Users/a14179/.gvm/scripts/gvm" ]] && source "/Users/a14179/.gvm/scripts/gvm"
