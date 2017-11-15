# Path to your oh-my-zsh installation.
export ZSH=/Users/gcipriano/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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
plugins=(git)
#plugins=(zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
DEFAULT_USER="gcipriano"


export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_77.jdk/Contents/Home"
export CATALINA_BASE="/Users/gcipriano"
export PATH=$PATH:/Users/gcipriano/Library/Android/sdk/platform-tools
# Homebrew
export PATH=/usr/local/bin:$PATH

#kubectl
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'

alias mysqldump='/Applications/MySQLWorkbench.app/Contents/MacOS/mysqldump'

function workon { source ../.virtualenvs/"$1"/bin/activate}

alias watch='watch '

function kube
{
    echo "executing kubectl --context=evo-$2 --namespace=$1-$2 get deployments,pods  -o wide"
    kubectl --context=evo-$2 --namespace=$1-$2 get deployments,pods  -o wide 
}

export PATH="$PATH:$HOME/.rvm/bin"


#nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# auto-completition
if [ -x /usr/local/git/bin/git ]; then
    source ~/.git-completion.bash
fi

# zsh-syntax-highlighting
source /Users/gcipriano/Utilities/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Managing multiple git emails for commits
# setup a .gitemail file and all your git subfolders
# will commit with the email specified in the fail
# 
# for example 
# 
# work/.gitemail johnny.stecchino@awesomecompany.com
# personal/.gitemail johnny.stecchino@gmail.com
#
# thanks to @pithyless https://stackoverflow.com/questions/8337071/different-gitconfig-for-a-given-subdirectory
#
alias git='GIT_AUTHOR_EMAIL=$(
      p=$(pwd)
      while [[ $p != "$HOME" ]]; do
        [ -e $p/.gitemail ] && cat $p/.gitemail && break
        p=$(dirname $p)
      done) GIT_COMMITTER_EMAIL=$(
      p=$(pwd)
      while [[ $p != "$HOME" ]]; do
        [ -e $p/.gitemail ] && cat $p/.gitemail && break
        p=$(dirname $p)
      done) /usr/bin/git'
