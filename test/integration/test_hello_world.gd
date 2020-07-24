extends "res://addons/gut/test.gd"

func before_each():
	gut.p("ran setup", 2)

func after_each():
	gut.p("ran teardown", 2)

func before_all():
	gut.p("ran run setup", 2)

func after_all():
	gut.p("ran run teardown", 2)

func test_assert_eq_number_equal():
    assert_eq(1, 1, "1 == 1")

func test_hello_world():
    assert_true(true, "Hello world from integration tests!")
