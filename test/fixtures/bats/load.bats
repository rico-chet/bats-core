[ -n "$HELPER_NAME" ] || HELPER_NAME="test_helper"
load "$HELPER_NAME"

@test "calling a loaded helper" {
  help_me
}

@test "load supports plain variables" {
  [ -n "${plain_var}" ]
  [ "${plain_var}" = "plain_value" ]
}

@test "load supports constants" {
  [ -n "${constant}" ]
  [ "${constant}" = "constant_value" ]
}

@test "load supports integer variables" {
  [ -n "${integer_var}" ]
  [ "${integer_var}" -eq 2020 ]
  (( integer_var == 2020 ))
}
