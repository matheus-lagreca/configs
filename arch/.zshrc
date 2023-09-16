# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Tmuxifier
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git kubectx kube-ps1 fzf)
RPS1='$(kubectx_prompt_info)'
RPROMPT='$(kube_ps1)'


## Path section
# Set $PATH if ~/.local/bin exist
if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000

### SOURCES ###
zsh_config_folder=~/.zsh-config

for folder in $zsh_config_folder/*; do
  if [ -d "$folder" ]; then
    alias_file="$folder/aliases.zsh"
    functions_file="$folder/functions.zsh"
    
    if [ -f "$alias_file" ]; then
      source "$alias_file"
    fi
    
    if [ -f "$functions_file" ]; then
      source "$functions_file"
    fi
  fi
done

# oh-my-zsh
source $ZSH/oh-my-zsh.sh
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source /usr/share/nvm/init-nvm.sh


##################
### my exports ###
##################
export BROWSER='/usr/bin/firefox'
export EDITOR=nvim
export ANDROID_SDK_ROOT='/home/matheus/Android/Sdk'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# export PATH="/usr/lib/ruby/gems/3.0.0/bin:$PATH"
. <(flux completion zsh)
