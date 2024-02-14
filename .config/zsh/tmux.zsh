### Tmux ###
alias tls='tmux ls'

# tss() {
#   ~/scripts/tmux/tmux-sessionizer.sh
# }
# bindkey -s '^f' 'tss\n'
alias tss="~/scripts/tmux/tmux-sessionizer.sh"
# FIX:find out how to run a script from a bind
# bindkey -s '^f' 'tmux-sessionizer\n'

# ~/.tmux/plugins
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
# ~/.config/tmux/plugins
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH
