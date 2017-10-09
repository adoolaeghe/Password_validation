require "./lib/password.rb"
require "test/unit"

extend Test::Unit::Assertions

assert_equal(password("12345678"), true)
assert_equal(password("123456"), false)
assert_equal(password("123456899"), false)
assert_equal(password("123abc"), false)
assert_equal(password("123abc4d"), true)
assert_equal(password("123abc4!"), false)
