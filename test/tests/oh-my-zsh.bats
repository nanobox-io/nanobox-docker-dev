# source docker helpers
. util/docker.sh

@test "Start Container" {
  start_container "dev-test"
}

@test "Verify oh-my-zsh installed" {
  # ensure oh-my-zsh config exists
  run docker exec "zsh-test" bash -c "[ -d /home/gonano/.oh-my-zsh ]"

  [ "$status" -eq 0 ]
}

@test "Stop Container" {
  stop_container "dev-test"
}
