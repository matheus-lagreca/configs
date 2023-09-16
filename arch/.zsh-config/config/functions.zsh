source ~/.zsh-config/docker/functions.zsh
source ~/.zsh-config/pacman/functions.zsh

#################
### functions ###
#################

# node
ni() {
  if [ -z "$1" ]; then
    npm install
    curl -d "Npm packages finished installing" notesv.lan/coffee
  else
    npm install $1
    curl -d "New package installed $1" notesv.lan/coffee
  fi
}

### Android
appJoin() {
  local selected_function
  selected_function=$(echo "oldAppLink oldAppGroupLink appLink appGroupLink appDirectJoin" | tr ' ' '\n' | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')

  if [ -z "$selected_function" ]; then
    echo "No function selected."
    return
  fi

  case "$selected_function" in
    "oldAppLink" )
      echo "Enter parameter 1:"
      read param1
      ~/Android/Sdk/platform-tools/adb shell am start -a "android.intent.action.VIEW" -d "br.rnp.conferenciawebmobile://portal/join/$param1"
      ;;
    "oldAppGroupLink" )
      echo "Enter parameter 1:"
      read param1
      echo "Enter parameter 2:"
      read param2
      ~/Android/Sdk/platform-tools/adb shell am start -a "android.intent.action.VIEW" -d "br.rnp.conferenciawebmobile://portal/join/$param1/$param2"
      ;;
    "appLink" )
      echo "Enter parameter 1:"
      read param1
      ~/Android/Sdk/platform-tools/adb shell am start -a "android.intent.action.VIEW" -d "br.rnp.conferenciawebmobile://join/personal-room/$param1"
      ;;
    "appGroupLink" )
      echo "Enter parameter 1:"
      read param1
      echo "Enter parameter 2:"
      read param2
      ~/Android/Sdk/platform-tools/adb shell am start -a "android.intent.action.VIEW" -d "br.rnp.conferenciawebmobile://join/group-room/$param1/$param2"
      ;;
    "appDirectJoin" )
      echo "Enter parameter 1:"
      read param1
      ~/Android/Sdk/platform-tools/adb shell am start -a "android.intent.action.VIEW" -d "br.rnp.conferenciawebmobile://direct-join/$param1"
      ;;
  esac
}

# remote desktop
# alias rmtout='rdesktop -g 1400x900 -P -z -x l -r sound:off -u <USER> <IP>'
rmtdesk() {
  rdesktop -g 1400x900 -P -z -x l -r sound:off -u $1 $2
}

# ntfy
ntfy() {
  scan=$($@) && curl -d "$scan" notesv.lan/coffee
}

### Github ###
# git clone 
ghgc() {
  git clone https://github.com/"$1"/"$2"
  curl -d "$1/$2 cloned" notesv.lan/coffee
}
# git clone ssh
ghgcssh() {
  git clone git@github.com:"$1"/"$2"
  curl -d "$1/$2 cloned" notesv.lan/coffee
}

klone() {
  select_type=$(echo "https ssh" | tr ' ' '\n' | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
  if [ -z "$select_type" ]; then
    echo "No type selected."
    return
  fi

  echo "Enter author name:"
  read param1
  echo "Enter project name:"
  read param2

  case "$select_type" in
    "https" )
      ghgc $param1 $param2
      ;;
    "ssh" )
      ghgcssh $param1 $param2
      ;;
  esac
}

kloneList() {
  echo "Enter author name:"
  read author

  repo_list=$(curl -s "https://api.github.com/users/$author/repos" | jq -r '.[].name')

  if [ -z "$repo_list" ]; then
    echo "No repositories found for the author."
    return
  fi

  selected_repo=$(echo "$repo_list" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')

  if [ -z "$selected_repo" ]; then
    echo "No repository selected."
    return
  fi

  echo "Selected repository: $selected_repo"

  select_type=$(echo "https ssh" | tr ' ' '\n' | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
  if [ -z "$select_type" ]; then
    echo "No type selected."
    return
  fi

  case "$select_type" in
    "https" )
      ghgc "$author" "$selected_repo"
      ;;
    "ssh" )
      ghgcssh "$author" "$selected_repo"
      ;;
  esac
}


### tmux into folder  fzf ###
v() {
    search_path1="$HOME/projects"
    search_path2="$HOME/mconf"
    search_path3="$HOME/godot"

    selected_path=$(echo -e "$search_path1\n$search_path2\n$search_path3" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
    if [ -z "$selected_path" ]; then
        return
    fi

    selected_dir=$(fd -td --max-depth 1 --base-directory="$selected_path" | cut -d '/' -f 1 | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
    if [ -z "$selected_dir" ]; then
        return
    fi

    existing_sessions=$(tmuxifier l | awk '{print $2}')

    if echo "$existing_sessions" | grep -q "^$selected_dir$"; then
        tmuxifier s "$selected_dir"
    else
        tmuxifier ns "$selected_dir"
    fi
}

### Tmux attack fzf ###
t() {
    existing_sessions=$(tls | awk -F ': ' '{print $1}')
    selected_session=$(echo "$existing_sessions" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
    
    if [ -z "$selected_session" ]; then
        return
    fi
    
    ta "$selected_session"
}

gmd() {
    command1="gdlint"
    command2="gdformat"

    selected_command=$(echo -e "$command1\n$command2" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
    if [ -z "$selected_command" ]; then
        return
    fi

    $selected_command
}

### npm fzf ###
n() {
  command1="start"
  command2="install and run"
  command3="install packages"
  command4="build"
  command5="install single package"

  selected_command=$(echo -e "$command1\n$command2\n$command3\n$command4\n$command5" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
  if [ -z "$selected_command" ]; then
      return
  fi

  case "$selected_command" in
    "start" )
      npm start
      ;;
    "install and run" )
      npm install && npm start
      ;;
    "install packages" )
      npm install
      ;;
    "build" )
      npm run build
      ;;
    "install single package" )
      echo "Enter package name:"
      read package_name
      npm install $package_name
      ;;
  esac
}

rc() {
  local crate
  crate=$(cargo search $1 | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down' | awk '{print $1}')
  cargo install $crate
}

### edit zsh configs ###
zn() {
  opt1="zshrc"
  opt2="zsh functions & aliases"

  selected_option=$(echo -e "$opt1\n$opt2" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
  if [ -z "$selected_option" ]; then
    return
  fi

  case "$selected_option" in
    "zshrc" )
      nvim ~/.zshrc
      ;;

    "zsh functions & aliases" )
      selected_folder=$(fd -td --max-depth 1 --base-directory="$HOME/.zsh-config" | cut -d '/' -f 1 | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
      if [ -z "$selected_folder" ]; then
        return
      fi

      selected_file=$(echo "aliases.zsh functions.zsh" | tr ' ' '\n' | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')
      if [ -z "$selected_file" ]; then
        return
      fi

      nvim ~/.zsh-config/$selected_folder/$selected_file
      ;;
  esac
}
