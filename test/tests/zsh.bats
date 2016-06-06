# source docker helpers
. util/docker.sh

@test "Start Container" {
  start_container "dev-test"
}

@test "Verify zsh installed" {
  # ensure zsh executable exists
  run docker exec "zsh-test" bash -c "[ -f /usr/bin/zsh ]"

  [ "$status" -eq 0 ]
}

@test "Stop Container" {
  stop_container "dev-test"
}
