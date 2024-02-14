alias dkstart='systemctl start docker.service'
alias dkenable='systemctl enable docker.service'

### rails/docker ###
alias dc='docker compose'
alias dcu='dc up'
alias dcr='dc run --rm'
alias dcb='dc build'
alias byebug='dcr --service-ports'

alias dscript='~/scripts/docker/dockermenu.sh'

# docker rails
dcrc () {
  dcr $1 rails c
}

dcrprep () {
  dcr $1 rake db:setup
}

dcrpop () {
  dcr $1 rake db:populate
}

dcrdrop () {
  dcr $1 rake db:drop
}

dcreset () {
  dcr $1 rake db:reset
}

dcrmig () {
  dcr $1 rake db:migrate
}

dcrgmig () {
  dcr $1 rails generate migration $2
}

zerar () {
  dcreset $1; dcb $1; dcrprep $1; dcrpop $1
}

dreset() {
  dc down;
  dcb $1;
  dcrprep $1;
  dcrpop $1;
  dcu $1;
}

zeraTriades () {
  dc down;
  docker image rm triades-portal-backend-api:latest;
  docker system prune;
  dcb api;
  dcrprep api;
  dcrmig api;
  dcrpop api;
  curl -d "full reset completed, running" notesv.lan/coffee
  dcu api;
}
