require "./lib/security_type.rb"
require "test/unit"

extend Test::Unit::Assertions

assert_equal(security_type("12345678"), "passcode")
assert_equal(security_type("123456"), "no match")
assert_equal(security_type("123456789"), "no match")
assert_equal(security_type("123abc"), "no match")
assert_equal(security_type("123abc4d"), "password")
assert_equal(security_type("123abc4!"), "no match")
