#Enable colors
export CLICOLOR=1
#Prompt format
PS1='\[\e[0;1;38;5;168m\]\h\[\e[0m\]:\[\e[0;1;38;5;168m\]\w\[\e[m\] \[\e[0;1;38;5;126m\]\u\[\e[0m\]$\[\e[m\] \[\e0\]'
#Print title
PS1="\[\e]0;\u@\h: \w\a\]$PS1"
alias ss='ss -pln'
alias ps='ps aux'

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar
#Replace cat with lolcat if exist.
if [ -f /usr/bin/lolcat ] ||  [ -f /usr/local/bin/lolcat ] ; then
    alias cat='lolcat'
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  # colored GCC warnings and errors
  export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
  #Colored Gnu ls
  alias ls='ls -Fhl --color=auto'
  #Colored grep
  alias grep='grep --color=auto -a'
  alias ss='ss -plnt'
  #Bash completion
  if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
      . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
    fi
  fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
  #Brew PATH
  export PATH="/usr/local/sbin:/usr/local/opt/grep/libexec/gnubin:$PATH"
  #Bash completion
  [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
  #Colored BSD ls
  alias ls='ls -GFhl'
  #Use GNU grep
  alias grep='ggrep --color=auto -a'
  #Disable brew update on brew intall
  export HOMEBREW_NO_AUTO_UPDATE=1
  alias ls='ls -GFhl'
fi
