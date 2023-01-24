require 'present'

RSpec.describe Present do
  context "when contents is nil" do
    it "fails" do
      gift = Present.new
      expect { gift.unwrap }.to raise_error "No contents have been wrapped."
    end
  end

    it "wraps and unwraps a content" do
      gift = Present.new
      gift.wrap("colours")
      expect(gift.unwrap).to eq "colours"
    end

  context "when contents have already been wrapped" do
    it "fails" do
      gift = Present.new
      gift.wrap("colours")
      expect { gift.wrap ("colours")}.to raise_error "A contents has already been wrapped."
    end
  end
end


    
