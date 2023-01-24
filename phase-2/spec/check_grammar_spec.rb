require 'check_grammar'

RSpec.describe "check_grammar method" do
    it "capitalises a small text and adds full stop" do
        output = check_grammar("hello my name is Sameera", "full stop")
        expect(output).to eq "Hello my name is Sameera."
    end

     it "capitalises a small text and adds exclamation mark" do
        output = check_grammar("encanto tells the tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia in a magical house. It’s set in a vibrant town, in a wondrous, charmed place called an Encanto", "exclamation mark")
        expect(output).to eq "Encanto tells the tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia in a magical house. It’s set in a vibrant town, in a wondrous, charmed place called an Encanto!"
    end

    it "capitalises a small text and adds a question mark" do 
        output = check_grammar("what is your name", "question mark")
        expect(output).to eq "What is your name?"
    end

    context "when any arguments are nil" do 
        it "throws an error" do 
            expect{check_grammar(nil,nil)}.to raise_error "No text/type was entered."
        end
    end
end