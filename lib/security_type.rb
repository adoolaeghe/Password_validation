require_relative 'password'
require_relative 'passcode'

def security_type(s)
  return "passcode" if passcode(s)
  return "password" if password(s)
  "no match"
end
