# Path
export PATH=/usr/local/bin:/usr/local/share/npm/bin:$DOTFILES/bin:/usr/texbin:$PATH

# Shortcut to this dotfiles
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh configuration.
export ZSH=$DOTFILES/zsh/ohmyzsh.git

# Company folder
export COMPANY=~/Ticketea

# Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set custom theme
ZSH_CUSTOM=$DOTFILES/zsh/custom/

# Set name of the theme to load.
ZSH_THEME="agnoster"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Plugins to load (custom plugins may be added to ~/.oh-my-zsh/custom/plugins/)
plugins=(brew colored-man colorize fabric gitfast git-extras knife osx pip python vagrant virtualenvwrapper wd pod rvm)

# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh

# All ZSH files inside dotfiles
typeset -U config_files
config_files=($DOTFILES/*/*.zsh)

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

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export NVM_DIR="/Users/patoroco/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm



export ANDROID_HOME=/usr/local/opt/android-sdk


# `brew cask` will install for all users by default
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
