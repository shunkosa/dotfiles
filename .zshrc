#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Config for Powerlevel9k
if [ -f ~/.p9ktheme ]; then
    source ~/.p9ktheme
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# PATH
# Add PATH for Node.js
export PATH=$HOME/.nodebrew/current/bin:$PATH

case ${OSTYPE} in
  darwin*)
  # Add PATH for Java8 for Anypoint Studio
  export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
  PATH=${JAVA_HOME}/bin:${PATH}

  ;;
  
  linux*)
  # Prioritize WLS linuxbrew PATH over manual install PATH
  export PATH=/home/linuxbrew/.linuxbrew/sbin:$PATH
  ;;
esac

# Customize to your needs.
setopt nolistbeep
setopt no_beep

# permission
umask 002