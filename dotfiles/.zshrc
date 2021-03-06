# vim:set fdm=marker:
#
# File:        .zshrc
# Maintainer:  Ryo Aoyama <r.fe51028.r@gmail.com>

cat <<'EOD'
[1;34m__        __   _
\ \      / /__| | ___ ___  _ __ ___   ___
 \ \ /\ / / _ \ |/ __/ _ \| '_ ` _ \ / _ \
  \ V  V /  __/ | (__ (_) | | | | | |  __/
   \_/\_/ \___|_|\___\___/|_| |_| |_|\___|
                        ____
                       |  _ \ _   _  ___
                       | |_) | | | |/ _ \
                       |  _ <| |_| | (_) |
                       |_| \_\\__, |\___/
                              |___/
EOD

# source common shell run command
source ~/.shrc.common

# path setting
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH="$PATH:$HOME/development/flutter/.pub-cache/bin"
export PATH="$PATH:$HOME/development/flutter/bin/cache/dart-sdk/bin/"

# env settings

if which rbenv > /dev/null; then
  eval "$(rbenv init -)" 2>/dev/null
fi

if which pyenv > /dev/null; then
  eval "$(pyenv init -)" 2>/dev/null
fi

if which jenv > /dev/null; then
  eval "$(jenv init -)" 2>/dev/null
fi

if which scalaenv > /dev/null; then
  eval "$(scalaenv init -)" 2>/dev/null
fi

if which swiftenv > /dev/null; then
  eval "$(swiftenv init - zsh)" 2>/dev/null
fi

if which nodenv > /dev/null; then
  eval "$(nodenv init -)" 2>/dev/null
fi

# use key map like emacs
bindkey -e

# history settings
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
# append history when exit shell
setopt append_history

# extended format for history
setopt extended_history

# beep when no history
unsetopt hist_beep

# delete duplicated history when register command
setopt hist_ignore_all_dups

# don't register history if the command with leading spaces
setopt hist_ignore_space

# remove extra spaces from command
setopt hist_reduce_blanks

# don't run command when matching
setopt hist_verify

# share history with all zsh process
setopt share_history

# make key map for history search
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end


# prompt settings
# variable expansion for prompt
setopt prompt_subst

# expansion of percent for prompt variable
setopt prompt_percent

# output CR when generating characters without trailing CR into prompt
setopt prompt_cr

# visible CR when output CR by prompt_cr
setopt prompt_sp

# PROMPT1
PS1="%{[0m%}
%{[37m%}\$(parse_git_status)%{[0m%}
%(?|%{[0;34m%}@%n |%{[0;31m%}@%n )%{[0;32m%}%~% %{[0;35m%}\$(parse_git_branch)%{[0m%}
"

# PROMPT2
PS2="%_> "

# PROMPT for correct
SPROMPT="zsh: Did you mean: %{[4m[31m%}%r%{[14m[0m%} [nyae]? "


# completion settings
autoload -Uz compinit
compinit -u
# don't create new prompt
setopt always_last_prompt

# do like putting * on cursor when complement
setopt complete_in_word

# output list automatically
setopt auto_list

# completion when pushed key for complement twice
unsetopt bash_auto_list

# move a command of candidates
setopt auto_menu

# set a command immediately
unsetopt menu_complete

# don't substring alias when complement
setopt complete_aliases

# beep when no result
unsetopt list_beep

# reduce line of list
setopt list_packed

# set candidate immediately
# zstyle ':completion:*' menu true

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' use-cache true
zstyle ':completion:*:default' menu select=3
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# color settings
autoload -U colors: colors

# auto change directory
setopt auto_cd

# correct command
setopt correct

setopt auto_pushd
setopt cdable_vars
setopt pushd_ignore_dups
setopt auto_param_slash
setopt mark_dirs
setopt auto_param_keys
setopt interactive_comments
setopt magic_equal_subst
setopt print_eight_bit
setopt extended_glob
setopt globdots

brew=`which brew 2>&1`
if [[ $? == 0 ]]; then
    . `brew --prefix`/etc/profile.d/z.sh
fi

function precmd ()
{
        brew=`which brew 2>&1`
        if [[ $? == 0 ]]; then
            z --add "$(pwd -P)"
        fi
}

# alias
alias ls='ls -a -G'
alias ref='source ~/.zshrc'
alias xc='open -a $(xcode-select -p)/../..'

# local shell command
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
