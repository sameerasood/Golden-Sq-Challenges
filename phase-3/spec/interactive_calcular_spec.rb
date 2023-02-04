# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1

require 'interactive_calculator'

RSpec.describe 'InteractiveCalculator' do
    it "asks the user to enter two numbres and then returns the subtraction result" do
        terminal = double :terminal
        subtraction_result = InteractiveCalculator.new(terminal)
        expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
        expect(terminal).to receive(:puts).with("Please enter a number").ordered
        expect(terminal).to receive(:gets).and_return("5").ordered
        expect(terminal).to receive(:puts).with("Please enter another number").ordered
        expect(terminal).to receive(:gets).and_return("2").ordered
        expect(terminal).to receive(:puts).with("Here's your result: 5 - 2 = 3").ordered
        
        subtraction_result.run
    end
end
