# Setting PATH for Py:thon 3.5
# The orginal version is saved in .bash_profile.pysave

# Install Python version in order to get this to work
# PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
# export PATH

# This is the link to a local Scripts folder that i dont have
# links to git completion script that needs to be downloaded
# source ~/Scripts/git-completion.bash

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# used for listing hidden files with the al to reveal hidden files
# F is for arranging by file sizes (big to little or vice versa?)
# G is a color scheme choice?
alias la='ls -alFG'
alias ls='ls -lFG'
alias c='clear'
# b for back
alias b='cd ..'

#changes command prompt to username then host name then your project directory
#and if its a git repository then it displays
PS1='\e[32m${USER%@*}@\h \e[34m$(parse_git_branch) \e[93m$PWD \e[m\n> '
export PS1

LS_COLORS=$LS_COLORS:'di=0;34:'
export LS_COLORS
