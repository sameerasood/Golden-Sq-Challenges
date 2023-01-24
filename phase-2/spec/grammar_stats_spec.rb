require 'grammar_stats'

RSpec.describe GrammarStats do
  it "Checks if the sentence begins with a capital letter" do
  string = GrammarStats.new
  result = string.check("Sometimes you want your code to throw an error.")
  expect(result).to eq true
  end

  it "Checks if the sentence not begins with a capital letter" do
  string = GrammarStats.new
  result = string.check("bits are designed to train specific skills or tools.")
  expect(result).to eq false
  end

  it "checks if the sentence ends with a punctuation mark." do
  string = GrammarStats.new
  result = string.check("Exercises designed to help you learn how")
  expect(result).to eq false
  end

  it "checks if the sentence does notends with a punctuation mark." do
  string = GrammarStats.new
  result = string.check("Exercises designed to help you learn how")
  expect(result).to eq false
  end

  it "returns percentage of the tests checked so far" do
    string = GrammarStats.new
    string.check("Sometimes you want your code to throw an error.")
    string.check("bits are designed to train specific skills or tools.")
    string.check("Exercises designed to help you learn how")
    string.check("Do this project solo.")
    percentage = string.percentage_good
    expect(percentage).to eq "50%"
  end

end

