function can_assert_equality() {
  assertion__equal 4 $((3+1))
}

function can_assert_that_string_contains_another_one() {
  assertion__string_contains "Cool dog is cool" "cool"
}

function can_assert_that_string_does_not_contain_another_one() {
  assertion__string_does_not_contain "Monorail cat" "Caturday"
}

function can_assert_that_string_is_empty() {
  assertion__string_empty ""
}

function can_assert_that_string_is_not_empty() {
  assertion__string_not_empty "Don't feed the zombies"
}

function can_assert_that_array_contains_element() {
  local lost_numbers=(4 8 15 16 23 42)

  assertion__array_contains 15 "${lost_numbers[@]}"
}

function can_assert_that_array_does_not_contain_element() {
  local lost_numbers=(4 8 15 16 23 42)

  assertion__array_does_not_contain 1337 "${lost_numbers[@]}"
}

function can_assert_that_status_code_is_success() {
  true

  assertion__status_code_is_success $?
}

function can_assert_that_status_code_is_success() {
  false

  assertion__status_code_is_failure $?
}

function can_assert_that_command_is_successful() {
  assertion__successful true
}

function can_assert_that_command_is_failing() {
  assertion__failing false
}