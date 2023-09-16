### pacman ###
p() {
  opt1="update single package"
  opt2="update all packages"
  opt3="install single package"

  selected_option=$(echo -e "$opt1\n$opt2\n$opt3" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
  if [ -z "$selected_option" ]; then
      return
  fi

  case "$selected_option" in
    "update single package" )
      pacman -Qu | awk '{print $1}' | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down' | xargs -ro sudo pacman -S
      ;;
    "update all packages" )
      sudo pacman -Syu
      ;;
    "install single package" )
      pacman -Ss | awk '{print $1}' | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down' | xargs -ro sudo pacman -S
      ;;
  esac
}

