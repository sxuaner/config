# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias e='emacsclient -nc'
alias et='emacs --daemon'
alias c='cd ..'
alias gist='git status'
alias ssh='ssh -v'
alias ek='pkill emacs'
alias nmap='nmap -v'
alias ipl='iptables -L'


function parse_git_branch {

        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \[\1\]/'

}

function proml {

  local       WHITE="\[\033[1;37m\]"

# OPTIONAL - if you want to use any of these other colors:

  local         RED="\[\033[0;31m\]"

  local   LIGHT_RED="\[\033[1;31m\]"

  local       GREEN="\[\033[0;32m\]"

  local LIGHT_GREEN="\[\033[1;32m\]"

  local  LIGHT_GRAY="\[\033[0;37m\]"

  local        BLUE="\[\033[0;34m\]"
# END OPTIONAL

  local     DEFAULT="\[\033[0m\]"

PS1="\h:\W \u$WHITE\$(parse_git_branch) $DEFAULT\$"

}

proml
