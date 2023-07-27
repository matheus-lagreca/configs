# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Tmuxifier
# export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
# eval "$(tmuxifier init -)"

# Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

## Path section
# Set $PATH if ~/.local/bin exist
if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000

# my sources
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# source /usr/share/nvm/init-nvm.sh

##################
### my exports ###
##################
export EDITOR=nvim

##################
### my aliases ###
##################

### zsh ###
alias zc='cat ~/.zshrc'
alias zn='nvim ~/.zshrc'
alias zs='source ~/.zshrc'

### config files ###
alias fixnvim='nvim ~/.config/nvim/'
# alias fixtmux='nvim ~/.tmux.conf'

### Tmux(xifier) ###
# alias ta='tmuxifier s'
# alias ts='tmuxifier ns'
# alias te='tmuxifier es'
# alias tl='tmuxifier l'
# alias tls='tmux ls'

### ssh ###
# alias sshfix='eval $(ssh-agent); ssh-add ~/.ssh/git'

### npm ###
alias ns='npm start'
alias ni='npm install'
alias nani='ni && na'
alias nsni='ni && ns'
alias nci='rm -rf node_modules/; npm install'

### docker compose ###
alias dc='docker compose'
alias dcu='dc up'
alias dcr='dc run --rm'
alias dcb='dc build'

# kubectl
# add these to the user bin 
alias k='kubectl'
# alias kust="~/kube/kustomize"

alias kldi='kind load docker-image'
alias kg="kubectl get"
alias dpods='kubectl describe pod'
alias kapply= 'kubectl apply -f'

alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
# alias kust-diff="kustomize build . | kubectl diff -f - || true"
# alias kust-apply="kustomize build . | kubectl apply -f -"
alias klf="kubectl logs -f"

### Cargo packages ###
# alias ls='exa --icons -x'
# alias ll='exa --icons -x -a'
# alias cat='bat'

#################
### functions ###
#################

# Github
# git clone 
ghgc() {
  git clone https://github.com/"$1"/"$2"
}
# git clone ssh
ghgcssh() {
  git clone git@github.com:"$1"/"$2"
}

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# export PATH="/usr/lib/ruby/gems/3.0.0/bin:$PATH"
