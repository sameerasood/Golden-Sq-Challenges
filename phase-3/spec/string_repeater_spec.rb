# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

require 'string_repeater'

RSpec.describe 'StringRepeater' do
    it "repeates the string for a given number of times" do
        terminal = double :terminal
        string_repeater = StringRepeater.new(terminal)
        expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
        expect(terminal).to receive(:puts).with("Please enter a string").ordered
        expect(terminal).to receive(:gets).and_return("Raaya ").ordered
        expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
        expect(terminal).to receive(:gets).and_return("5").ordered
        expect(terminal).to receive(:puts).with("Here is your result: Raaya Raaya Raaya Raaya Raaya ")
        string_repeater.run
    end
end