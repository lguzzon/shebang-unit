function global_teardown() {
	_function_called "${FUNCNAME}"
}

function failing_test_function() {
	_function_called "${FUNCNAME}"
	return 1
}