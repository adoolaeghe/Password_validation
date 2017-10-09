def passcode(s)
  /\A\d{8}\z/.match(s) != nil
end
