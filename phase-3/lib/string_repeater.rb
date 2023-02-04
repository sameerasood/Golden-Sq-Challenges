class StringRepeater
    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will repeat a string many times."
        @terminal.puts "Please enter a string"
        str = @terminal.gets.chomp
        @terminal.puts "Please enter a number of repeats"
        occurence = @terminal.gets.chomp
        number = occurence.to_i
        string = "#{str}" * number
        @terminal.puts "Here is your result: #{string}" 
    end
end