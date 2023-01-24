require "report_length"

RSpec.describe "report_length method" do #returns the length of the argument 
it "returns the length of the parameter" do
  length = report_length("string")
  expect(length).to eq "This string was 6 characters long."
  length = report_length("Only")
  expect(length).to eq "This string was 4 characters long."
  length = report_length("")
  expect(length).to eq "This string was 0 characters long."
end
end