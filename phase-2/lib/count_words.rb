def count_words(str)
  fail "No string entered!" if str.nil? || str.empty?
  if !str.empty?
   return str.split.length
  end
end