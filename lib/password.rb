def password(s)
  /^[a-z0-9]{8}+$/.match(s) != nil
end
