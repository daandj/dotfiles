# Path to your oh-my-zsh installation.
export ZSH=/Users/daandejong/.oh-my-zsh

# Path to gcc-cross-compiler:
export PATH="$HOME/opt/cross/bin:$PATH"
export PATH="$HOME/opt/hosted/bin:$PATH"

source ~/.shell_prompt.sh # custom promptline prompt

DEFAULT_USER="daandejong"
setopt RM_STAR_WAIT
setopt CORRECT
export TERM="xterm-256color"

# make vim default editor.
export EDITOR="vim"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR

# set up aliases.
source ~/.oh-my-zsh/lib/alias.zsh

# set up bochs emulator
export PATH="$PATH:$HOME/opt/bochs/bin"
export BXSHARE="$HOME/opt/bochs/share/bochs"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=14

# Uncomment the following line to disable colors in ls.
DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git tmuxinator)

# User configuration

export PATH="$PATH:/path/to/your/python2.7/bin:/Users/Daan/.rvm/gems/ruby-2.2.1/bin:/Users/Daan/.rvm/gems/ruby-2.2.1@global/bin:/Users/Daan/.rvm/rubies/ruby-2.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/Daan/.rvm/bin"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
