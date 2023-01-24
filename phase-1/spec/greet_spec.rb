require 'greet'
RSpec.describe "greet method" do
    it "returns Hello, #{name}!" do
        greeting = greet("Sameera")
        expect(greeting).to eq "Hello, Sameera!"
    end 
end