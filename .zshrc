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

# Source zsh-completions
if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi

# Add path for nodejs
export PATH=$HOME/.nodebrew/current/bin:$PATH

# Add path for Java8
export JAVA_HOME=`/usr/libexec/java_home -v "1.8"`
PATH=${JAVA_HOME}/bin:${PATH}

# Customize to your needs...
setopt nobeep

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/skosaka/.nodebrew/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/skosaka/.nodebrew/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/skosaka/.nodebrew/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/skosaka/.nodebrew/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/skosaka/.nodebrew/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/skosaka/.nodebrew/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh