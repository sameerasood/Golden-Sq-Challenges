require 'personal_diary'
#A method called make_snippet that takes a string as an argument
#and returns the first five words and then a '...' if there are more than that.

RSpec.describe "make_snippet method" do
  it "returns the string" do
    string = make_snippet("hello")
    expect(string).to eq "hello"
  end

  it "returns the first five words of the string followed by ..." do
   string = make_snippet("The cold never bothered me anyways")
   expect(string).to eq "The cold never bothered me..."
  end

  context "when no string is entered" do
    it "fails" do
      expect {make_snippet("")}.to raise_error "No string entered!!"
    end
  end
end