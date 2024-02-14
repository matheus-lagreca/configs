### zsh ###
#TODO: update
alias zc='z ~/.zsh/; nvim config.zsh'
alias zn='nvim ~/.zshrc'
alias zs='source ~/.zshrc'

alias fixi3='nvim ~/.config/i3/config'

### config files ###
alias fixnvim='nvim ~/.config/nvim/init.lua'
alias fixtmux='nvim ~/.tmux.conf'

### ssh ###
alias sshfix='eval $(ssh-agent); ssh-add ~/.ssh/git'
# bindkey -s '^s' 'sshfix\n'


##################
### my exports ###
##################
export EDITOR='nvim'
export BROWSER='/usr/bin/firefox'
