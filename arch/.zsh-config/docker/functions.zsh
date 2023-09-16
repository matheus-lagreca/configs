### docker ###
# docker compose menu
# find docker compose file list the services
# then run docker commands with the selected service

dcm() {
  local compose_files
  local selected_file
  local services

  # Find Docker Compose files in the current directory and its subdirectories
  compose_files=$(find . -type f -name 'docker-compose.yml' -o -name 'docker-compose.yaml')

  # Check if there are no Docker Compose files
  if [[ -z "$compose_files" ]]; then
    echo "No Docker Compose files found in the current directory and its subdirectories."
    return 1
  fi

  # Use fzf to select a Docker Compose file
  selected_file=$(echo "$compose_files" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')

  # Check if a file was selected
  if [[ -z "$selected_file" ]]; then
    echo "No file selected. Exiting."
    return 1
  fi

  # Extract services from the selected Docker Compose file
  services=$(docker-compose -f "$selected_file" config --services 2>/dev/null)

  # Check if there are no services in the selected file
  if [[ -z "$services" ]]; then
    echo "No services found in the selected Docker Compose file: $selected_file"
    return 1
  fi

  # Use fzf to select a service from the list
  selected_service=$(echo "$services" | fzf --border=rounded --margin=20% --reverse --cycle --bind 'tab:toggle-up,btab:toggle-down')

  # Check if a service was selected
  if [[ -n "$selected_service" ]]; then
    echo "Selected service: $selected_service"
  else
    echo "No service selected. Exiting."
  fi
}

# docker rails
dcrc () {
  docker compose run --rm $1 rails c
}

dcrprep () {
  docker compose run --rm $1 rake db:setup
}

dcrpop () {
  docker compose run --rm $1 rake db:populate
}

dcrdrop () {
  docker compose run --rm $1 rake db:drop
}

dcreset () {
  docker compose run --rm $1 rake db:reset
}

dcrmig () {
  docker compose run --rm $1 rake db:migrate
}

dcrgmig () {
  docker compose run --rm $1 rails generate migration $2
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
