require 'gratitudes'

RSpec.describe "gratitudes method" do
  it "returns empty array" do
    goodthings = Gratitudes.new
    expect(goodthings.format).to eq "Be grateful for: "
  end

  it "returns a gratitude from array" do
    goodthings = Gratitudes.new
    goodthings.add("Kindness")
    expect(goodthings.format).to eq "Be grateful for: Kindness"
  end

    it "adds multiple gratitudes from array" do
    goodthings = Gratitudes.new
    goodthings.add("Kindness")
    goodthings.add("Empathy")
    goodthings.add("Love")
    expect(goodthings.format).to eq "Be grateful for: Kindness, Empathy, Love"
  end
end