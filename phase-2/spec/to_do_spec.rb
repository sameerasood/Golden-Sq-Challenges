require 'to_do'

RSpec.describe "to_do method" do
  it "returns true if the task includes TODO" do
    task = to_do("#TODO Schedule a meeting with GP")
    expect(task).to be true
  end

  it "returns the task" do
    task = to_do("Invite kids to party")
    expect(task).to be false
  end
  
  context "gives an error if no task entered" do
    it "fails" do
      expect{to_do("")}.to raise_error "No task entered!"
    end
  end
end