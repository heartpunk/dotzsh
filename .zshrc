# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

VENV_WRAPPER_PATH="/usr/local/bin/virtualenvwrapper.sh"
if [[ -s "$VENV_WRAPPER_PATH" ]]; then
  export WORKON_HOME=~/.virtual_envs
  source $VENV_WRAPPER_PATH
fi

[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

# make go work
export GOPATH="$HOME/.gopath"
export PATH="$GOPATH/bin:$PATH"

alias resource="source ~/.zshrc"
alias ezshrc="vim ~/.zshrc&&resource"

alias -g tree="tree -C"

export JAVA_HOME="$(/usr/libexec/java_home)"
