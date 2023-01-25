## Path section
# Set $PATH if ~/.local/bin exist
if [ -d "$HOME/.local/bin" ]; then
    export PATH=$HOME/.local/bin:$PATH
fi

HISTFILE=~/.zhistory
HISTSIZE=50000
SAVEHIST=10000

## Useful aliases
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias rmpkg="sudo pacman -Rdd"
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short'                                   # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB (expac must be installed)
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'			# List amount of -git packages

# Get fastest mirrors 
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist" 
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist" 
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist" 
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist" 

# Help people new to Arch
alias apt-get='man pacman'
alias apt='man pacman'
alias helpme='cht.sh --shell'
alias pacdiff='sudo -H DIFFPROG=meld pacdiff'
alias please='sudo'
alias tb='nc termbin.com 9999'
alias upd="/usr/bin/update"

# my sources
source /usr/share/nvm/init-nvm.sh

# my exports
export EDITOR=nvim
export ANDROID_SDK_ROOT='/home/mattster/Android/Sdk'

# my aliases
alias cade='cat ~/.zshrc'
alias arrumar='nvim ~/.zshrc'
alias arruma='source ~/.zshrc'

alias dkstart='systemctl start docker.service'
alias dkenable='systemctl enable docker.service'

alias ta='tmux attach -t'
alias ts='tmux new -s'

alias kbus='setxkbmap us'
alias kbr='setxkbmap br'

alias sshfix='eval $(ssh-agent); ssh-add ~/.ssh/git'

alias ff='firefox -p'

alias ya='yarn android'
alias yi='yarn install'
alias yci='rm -rf node_modules; yarn install'

alias emu='~/Android/Sdk/emulator/emulator -avd Pixel_4_API_30 -no-audio'
alias emu='~/Android/Sdk/emulator/emulator -list-avds'

# rails
alias dc='docker-compose'
alias dcu='dc up'
alias dcr='dc run--rm'
alias dcb='dc build'
alias dcrprep='dcr dev rake db:prepare'
alias dcrpop='dcr dev rake db:populate'
alias dcrdrop='dcr dev rake db:drop'
alias dcreset='dcr dev rake db:reset'
alias zerar='dcreset; dcb dev; dcrprep; dcrpop'

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


## Run neofetch
neofetch
