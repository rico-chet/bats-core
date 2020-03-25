[ -n "$HELPER_NAME" ] || HELPER_NAME="test_helper"
load "$HELPER_NAME"

@test "calling a loaded helper" {
  help_me
}

@test "load supports plain variables" {
  [ -n "${plain_var}" ]
  [ "${plain_var}" = "plain_value" ]
}
