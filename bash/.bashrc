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
