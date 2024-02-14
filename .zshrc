# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/bin:$PATH

# # Path to your oh-my-zsh installation.
# export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git kubectx kube-ps1 fzf zsh-syntax-highlighting)
PROMPT='$(kube_ps1)'$PROMPT

RPS1='$(kubectx_prompt_info)'
RPROMPT='$(kube_ps1)'

source $ZSH/oh-my-zsh.sh
source ~/.rvm/scripts/rvm

if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

HISTFILE=~/.zhistory
HISTSIZE=10000
SAVEHIST=10000

##################
### my sources ###
##################
zsh_config_folder=~/dotfiles/.config/zsh

for file in $zsh_config_folder/*.zsh; do
  if [ -f "$file" ]; then
    source "$file"
  fi
done
