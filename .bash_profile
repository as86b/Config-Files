# Setting PATH for Py:thon 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

source ~/Scripts/git-completion.bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

alias la='ls -alFG'
alias ls='ls -lFG'
alias c='clear'
alias b='cd ..'
alias s5="cd Education/S5-College/"

PS1='\e[32m${USER%@*}@\h \e[34m$(parse_git_branch) \e[93m$PWD \e[m\n> '
export PS1

LS_COLORS=$LS_COLORS:'di=0;34:'
export LS_COLORS
