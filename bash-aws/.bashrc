# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias et='emacs --daemon'
alias e='emacsclient -t'
alias gpglk='gpg --list-key'
alias ipl='iptables -L --line-numbers'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
. /etc/bash_completion.d/git-completion.bash
