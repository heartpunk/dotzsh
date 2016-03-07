# Path to your oh-my-zsh installation.
export ZSH=/Users/tehgeekmeister/.oh-my-zsh

ZSH_THEME="robbyrussell"

export UPDATE_ZSH_DAYS=1

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(brew git)

# virtualenvwrapper
VENV_WRAPPER_PATH="/usr/local/bin/virtualenvwrapper.sh"
if [[ -s "$VENV_WRAPPER_PATH" ]]; then
  export WORKON_HOME=~/.virtual_envs
  source $VENV_WRAPPER_PATH
fi

# git shortcuts

function git_status_wrapper() {
  if [ -n $GIT_DIR ] || [[ $GIT_DIR == "/Users/tehgeekmeister/.config/vcsh/repo.d"* ]]; then
    git status -uno
  else
    git status
  fi
}

alias -g gs="git_status_wrapper"

# pythonz
[[ -s $HOME/.pythonz/etc/bashrc ]] && source $HOME/.pythonz/etc/bashrc

# meta
alias resource="source ~/.zshrc"
alias ezshrc="vim ~/.zshrc&&resource"

# convenience
alias -g tree="tree -C"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/vagrant/bin:/usr/local/sbin:/Users/tehgeekmeister/.rvm/bin"

source $ZSH/oh-my-zsh.sh
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
