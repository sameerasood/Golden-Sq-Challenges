require 'time_error'

RSpec.describe TimeError do
    it "returns difference in seconds between server time and computer time" do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"92.234.78.11","datetime":"2023-01-27T10:37:58.767550+00:00","day_of_week":5,"day_of_year":27,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674815878,"utc_datetime":"2023-01-27T10:37:58.767550+00:00","utc_offset":"+00:00","week_number":4}')
    time = Time.new(2023, 1, 27, 10, 37, 58)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time)).to eq 0.76755
    end
end