require "./lib/passcode.rb"
require "test/unit"

extend Test::Unit::Assertions

assert_equal(passcode("12345678"), true)
assert_equal(passcode("123456"), false)
assert_equal(passcode("123456789"), false)
assert_equal(passcode("123abc"), false)
