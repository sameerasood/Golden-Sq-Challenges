def check_grammar(string, type)
    fail "No text/type was entered." if (string.nil? || type.nil?)

    arr = string.split(' ')
    arr[0].capitalize!
    text = arr.join(' ')

    if type == "full stop"
        return text + "." 
    elsif type == "question mark"
        return text + "?"
    elsif type == "exclamation mark"
        return text + "!"     
    end
end