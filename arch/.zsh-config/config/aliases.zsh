##################
### my aliases ###
##################

### zsh ###
alias zs='source ~/.zshrc'

### config files ###
alias fixi3='nvim ~/.config/i3/config'
alias fixnvim='nvim ~/.config/nvim/'
alias fixpolybar='nvim ~/.config/polybar/'
alias fixtmux='nvim ~/.tmux.conf'

### dual monitors ###
alias dualLeft='xrandr --output HDMI-1 --auto --left-of eDP-1 --output eDP-1 --auto'
alias dualRight='xrandr --output HDMI-1 --auto --right-of eDP-1 --output eDP-1 auto'
alias singleNote='xrandr --output HDMI-1 --auto --output eDP-1 --off'
alias singleExternal='xrandr --output HDMI-1 --off --output eDP-1 --auto'

### Tmux(xifier) ###
alias ta='tmuxifier s'
alias ts='tmuxifier ns'
alias te='tmuxifier es'
alias tl='tmuxifier l'
alias tls='tmux ls'

### ssh ###
alias sshfix='eval $(ssh-agent); ssh-add ~/.ssh/git'

### npm ###
alias na='npm run android'
alias ns='npm start'
alias nani='ni && na'
alias nsni='ni && ns'
alias nci='rm -rf node_modules/; npm install'

### android emulator ###
alias emu='~/Android/Sdk/emulator/emulator -avd Pixel_4_API_30'
alias emuNoAudio='~/Android/Sdk/emulator/emulator -avd Pixel_4_API_30 -no-audio'
alias emuList='~/Android/Sdk/emulator/emulator -list-avds'

# kubectl
alias k='kubectl'
alias krnp='kubectl-121'
alias kust="~/kube/kustomize"

alias kldi='kind load docker-image'
alias kltriadesf='kldi triades-portal-frontend-app'
alias kg="kubectl get"
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias dpods='kubectl describe pod'
alias kapply= 'kubectl apply -f'

alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
# alias kust-diff="kustomize build . | kubectl diff -f - || true"
# alias kust-apply="kustomize build . | kubectl apply -f -"
alias klf="kubectl logs -f"


### projects ###
alias elos='nvim ~/mconf/elos-portal'
alias ntb='nvim ~/mconf/triades-portal-backend'
alias ntf='nvim ~/mconf/triades-portal-frontend'
alias lti='nvim ~/mconf/workalti/bbb-app-rooms'
alias bbbapi='nvim ~/mconf/bigbluebutton-api-ruby'
alias app='nvim ~/mconf/mconf-portal-mobile'

### mconf ###
alias db='~/mconf/elos-portal/; dcu dev_db -d'
alias dcw='dcu dev_resque_worker'

### Cargo packages ###
alias ls='exa --icons -x'
alias ll='exa --icons -x -a'
alias cat='bat'

### ssh ###
alias note='ssh notesv@192.168.4.9'
alias terrariasv='ssh terraria@192.168.4.9'

### neovim ###
alias gvim='nvim --listen ~/.cache/nvim/godot.pipe .'
