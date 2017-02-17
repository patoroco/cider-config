# Shortcut to this dotfiles
export CIDER=$HOME/.cider

# Path to your oh-my-zsh configuration.
export ZSH=$CIDER/zsh/oh-my-zsh.git

# Company folder
export COMPANY=~/Ticketea

# Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set custom theme
ZSH_CUSTOM=$CIDER/zsh/custom/

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins to load (custom plugins may be added to ~/.oh-my-zsh/custom/plugins/)
BUNDLED_COMMANDS=(
  fastlane
  pod
)
plugins=(
  brew
  bundler
  colorize
  colored-man
  fabric
  gem
  gitfast
  git-extras
  npm
  pip
  pod
  python
  rvm
  screen
  vagrant
  virtualenvwrapper
  wd
  xcode
  z
  zsh-syntax-highlighting
)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# All ZSH files inside dotfiles
typeset -U config_files
config_files=($CIDER/zsh/*.zsh)

# Load config files
for file in ${config_files}
do
  source $file
done

# Save secret crap inside ~/.localrc
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi


# Path
export PATH=/usr/local/bin:/usr/local/share/npm/bin:$CIDER/bin:/usr/texbin:$PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/patoroco/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export ANDROID_HOME=/usr/local/opt/android-sdk

# `brew cask` will install for all users by default
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

export ANSIBLE_VAULT_PASSWORD_FILE=~/.ticketea_ansible_vault_pass

alias sshtkt="ssh -i ~/.ssh/ticketea/devops.pem -l ubuntu"
alias tailtkt='ssh vagrant "tail -f /var/log/ticketea/api/*.log"'
alias sedtkt="sed 's/#012/\'$'\n/g'"
alias tktb64="pbpaste | base64 -D"

