require 'counter'

RSpec.describe Counter do
  it "returns count = 0" do
  count = Counter.new
  result = count.report
  expect(result).to eq "Counted to 0 so far"
  end

  it "adds 5 to the count" do
    count = Counter.new
    count.add(5)
    result = count.report
    expect(result).to eq "Counted to 5 so far"
  end

  it "adds multiple numbers to count" do
    count = Counter.new
    count.add(5)
    count.add(3)
    count.add(2)
    result = count.report
    expect(result).to eq "Counted to 10 so far"
  end
end

