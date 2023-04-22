# wallpaper/theme
(cat ~/.cache/wal/sequences &)
source ~/.cache/wal/colors-tty.sh wal

# Tmuxifier
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# source /usr/share/nvm/init-nvm.sh

# my exports
export EDITOR=nvim
export ANDROID_SDK_ROOT='/home/matheus/Android/Sdk'

# my aliases
alias zcat='cat ~/.zshrc'
alias znvim='nvim ~/.zshrc'
alias zsource='source ~/.zshrc'

# config files
alias fixi3='nvim ~/.config/i3/config'
alias fixnvim='nvim ~/.config/nvim/'
alias fixpolybar='nvim ~/.config/polybar/'
alias fixtmux='nvim ~/.tmux.conf'

alias dkstart='systemctl start docker.service'
alias dkenable='systemctl enable docker.service'

### dual monitors ###
alias dualLeft='xrandr --output HDMI-1 --auto --left-of eDP-1 --output eDP-1 --auto'
alias dualRight='xrandr --output HDMI-1 --auto --right-of eDP-1 --output eDP-1 auto'
alias singleNote='xrandr --output HDMI-1 --auto --output eDP-1 --off'
alias singleExternal='xrandr --output HDMI-1 --off --output eDP-1 --auto'

alias w='wal -q -i ~/Pictures/wallpapers/'

alias ta='tmuxifier s'
alias ts='tmuxifier ns'
alias te='tmuxifier es'
alias tl='tmuxifier l'

alias sshfix='eval $(ssh-agent); ssh-add ~/.ssh/git'

alias ya='npm run android'
alias yi='npm install'

alias emu='~/Android/Sdk/emulator/emulator -avd Pixel_4_API_30 -no-audio'
alias emu='~/Android/Sdk/emulator/emulator -list-avds'

# rails
alias dc='docker compose'
alias dcu='dc up'
alias dcr='dc run --rm'
alias dcb='dc build'
alias dcrprep='dcr dev rake db:prepare'
alias dcrpop='dcr dev rake db:populate'
alias dcrdrop='dcr dev rake db:drop'
alias dcreset='dcr dev rake db:reset'
alias zerar='dcreset; dcb dev; dcrprep; dcrpop'

# remote desktop
# TODO: make it into a function with selections
alias rmtout='rdesktop -g 1400x900 -P -z -x l -r sound:off -u <USER> <IP>'

# Cargo packages
alias ls='exa --icons -x'
alias ll='exa --icons -x -a'
alias cat='bat'

# functions

# Github
# git clone 
ghgc() {
  git clone https://github.com/"$1"/"$2"
}
# git clone ssh
ghgcssh() {
  git clone git@github.com:"$1"/"$2"
}

# Run neofetch
neofetch

# test using starship instead of oh-my-zsh
eval "$(starship init zsh)"
