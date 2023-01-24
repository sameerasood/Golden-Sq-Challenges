#A method called make_snippet that takes a string as an argument
#and returns the first five words and then a '...' if there are more than that.
def make_snippet(str)
   if str.empty?
    fail "No string entered!!"
   elsif str.split(" ").length < 5
    return str
   elsif str.split(" ").length >= 5
    str = str.split[0,5].join(" ")
    return str + "..."
  end
end
