class InteractiveCalculator
    def initialize(terminal)
        @terminal = terminal
    end

    def run
        @terminal.puts "Hello. I will subtract two numbers."
        @terminal.puts "Please enter a number"
        number_1 = @terminal.gets.chomp
        @terminal.puts "Please enter another number"
        number_2 = @terminal.gets.chomp
        result = (number_1).to_i - (number_2).to_i
        @terminal.puts "Here's your result: #{number_1} - #{number_2} = #{result}"
    end
        
end