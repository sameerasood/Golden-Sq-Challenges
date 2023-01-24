def reading_time(str)
    fail "No string entered!" if str.nil?

    words = str.split(' ')
    count = words.count

    if count <= 200
        time = 1
    elsif
        val = (count.to_f/200).to_f #1.205
        time = val.to_i #1
        if val != time
            time += 1
        end
    end

    return time
end