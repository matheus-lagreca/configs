extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.gz) tar xzf $1 ;;
      *.rar) unrar x $1 ;;
      *.tar) tar xf $1 ;;
      *.zip) unzip $1 ;;
      *) echo "'$1' cannot be extracted with extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias update="sudo apt update; sudo apt upgrade"
