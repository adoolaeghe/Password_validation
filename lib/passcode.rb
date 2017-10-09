def passcode(s)
  regex = /\A\d{8}\z/
  if (regex =~ s) == 0
    true
  else
    false
  end
end
