# some more ls aliases
alias ll='ls -alFG'
alias la='ls -A'
alias l='ls -CF'
alias ls='ls -G'

# some more grep alias
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


#enables colorin the terminal bash shell export
CLICOLOR=1

#sets up thecolor scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad

#sets up theprompt color (currently a green similar to linux terminal)
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

#enables colorfor iTerm
export TERM=xterm-color

# config about virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Document/Code
source /usr/local/bin/virtualenvwrapper.sh

# Add mysql path
# Set DYLD_LIBRARY_PATH to avoid error "Library not loaded: libmysqlclient.18.dylib"
export PATH=${PATH}:/usr/local/mysql/bin
export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib/"

# config about homebrew
if [ -f /usr/local/bin/brew ]; then
    export HOMEBREW_GITHUB_API_TOKEN=abf53b6dcd04be9b3845c1caac95113772ce1f9d
fi
source $(brew --repository)/Library/Contributions/brew_bash_completion.sh

# config about bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# java
export JAVA_HOME=$(/usr/libexec/java_home)
