require 'time_error'

RSpec.describe TimeError do
    it "returns difference in seconds between server time and computer time" do
        time_error = TimeError.new
        