require 'check_codeword'
RSpec.describe "check codeword method" do
  it "checks the codeword to let user in" do
    check = check_codeword("horse")
    expect(check).to eq "Correct! Come in."
  end

  it "checks the first and last character" do
    check = check_codeword("hence")
    expect(check).to eq "Close, but nope!"
  end

  it "checks first and last character do not match" do
    check = check_codeword("craft")
    expect(check).to eq "WRONG!"
end
end