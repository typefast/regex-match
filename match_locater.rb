def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}-->#{match[0]}<--#{match.post_match}"
  else
    "No match"
  end
end

puts show_regexp("Cool cats", /t/)

def another_match(string, pattern)
  match = pattern.match(string)
  if match
    "Preceeding: #{$`} Match: #{$&} After: #{$'}"
  else
    "No match"
  end
end

puts another_match("string cheese", /ee/)
