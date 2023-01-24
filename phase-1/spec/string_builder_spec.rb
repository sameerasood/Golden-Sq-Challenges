require 'string_builder'

RSpec.describe StringBuilder do
  it "returns the empty string" do
    string = StringBuilder.new
    expect(string.output).to eq ""
    expect(string.size).to eq 0
  end

  it "returns the size of empty string" do
    string = StringBuilder.new
    expect(string.size).to eq 0
  end

  it "adds a new string." do
    string = StringBuilder.new
    string.add("Hi")
    expect(string.output).to eq "Hi"
    expect(string.size).to eq 2
  end

  it "adds a new string to an existing string." do
    string = StringBuilder.new
    string.add("Hi")
    string.add(" Good Morning")
    expect(string.output).to eq "Hi Good Morning"
    expect(string.size).to eq 15
  end
end
