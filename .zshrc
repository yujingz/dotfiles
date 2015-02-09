# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
DEFAULT_USER="yz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autojump bundler git brew gem osx rails zeus zsh-syntax-highlighting ssh-agent npm node)

source $ZSH/oh-my-zsh.sh
### Added by the Heroku Toolbelt
eval "$(rbenv init - zsh)"
export PATH="/user/local/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

export BUNDLER_EDITOR=mvim

export GOPATH=$HOME/Workspaces/go

export PATH=$PATH:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
source '/Users/yz/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
source '/Users/yz/google-cloud-sdk/completion.zsh.inc'

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

export NVM_DIR="/Users/yz/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/yz/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
