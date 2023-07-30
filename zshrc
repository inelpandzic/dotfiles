# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/inelpandzic/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

#Golang

export GOPATH=/Users/inelpandzic/Dev/go
export PATH=$PATH:$(go env GOPATH)/bin

export PATH=$PATH:$HOME/.google-cloud-sdk/bin
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/14/bin


#Make terminal better
alias 1p='cat ~/.jedansif | base64 -D | pbcopy'
alias c='clear'
alias ll='ls -lahtr'

alias gs='git status'
alias gb='git branch'
alias gl='git log --decorate --oneline'
alias gp='git push origin $(git_current_branch)'
alias gc='git checkout .'

alias conf-zshrc='nvim ~/.zshrc'
alias conf-tmux='nvim ~/.tmux.conf'

alias dew='cd ~/Dev/Workspace/'
# alias repo='cd ~/Dev/Workspace/; cd $(find . -type d -print | fzf)'
alias rr='cd ~/Dev/Workspace/; cd $(find . -type d -print | fzf); tmux rename-window $( echo "${PWD##*/}")'

#
bindkey -v
#bindkey -s '^E' 'nvim $(fzf)\n'

alias n='nvim'
alias nf='nvim $(fzf)'

alias vc='code . --goto $(fzf)'

alias k='kubectl'
alias kn='kubens'
alias kx='kubectx'
alias kg='kubectl get'
alias ka='kubectl get all'
alias ks='kubectl get services'
alias kp='kubectl get pods'
alias kl='kubectl logs'


# yq version switch
alias yq4='rm /opt/homebrew/bin/yq && ln -s /opt/homebrew/Cellar/yq/4.26.1/bin/yq /opt/homebrew/bin/yq'
alias yq3='rm /opt/homebrew/bin/yq && ln -s /Users/inelpandzic/Dev/Workspace/tools/yq_darwin_amd64 /opt/homebrew/bin/yq'


# Completion stuff
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# fzf tab completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# env vars needed for LazyGit
export VISUAL="nvim"
export EDITOR="nvim"



# --------------------------------------------------------
# Percona GCP/GKE ----------------------------------------
# --------------------------------------------------------
#

alias gke-list='gcloud container clusters list'
alias gke-create='gcloud container clusters create --zone europe-west3-b inel-$RANDOM --cluster-version 1.25 --machine-type n1-standard-4 --preemptible --num-nodes=3 --no-enable-autoupgrade --disk-size 30 --labels delete-cluster-after-hours=10 && kubectl create clusterrolebinding cluster-admin-binding-inel --clusterrole=cluster-admin --user=inel.pandzic@percona.com'

gke-delete() {
    local cluster=$(gcloud container clusters list | awk '{print $1}' | grep inel | head -n 1)
    yes | gcloud container clusters delete $cluster --zone europe-west3-b
}

gke-recreate(){
    local cluster=$(gcloud container clusters list | awk '{print $1}' | grep inel | head -n 1)
    yes | gcloud container clusters delete $cluster --async --zone europe-west3-b

    gke-create
}

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/inelpandzic/Dev/Workspace/tools/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/inelpandzic/Dev/Workspace/tools/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/inelpandzic/Dev/Workspace/tools/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/inelpandzic/Dev/Workspace/tools/google-cloud-sdk/completion.zsh.inc'; fi

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
