require 'password_checker'

RSpec.describe PasswordChecker do
  it "length of the password is more than 8" do
    pswd = PasswordChecker.new
    expect(pswd.check("Wonderland")).to eq true
  end

  context "password length is less than 8" do
    it "fails" do
    pswd = PasswordChecker.new
    expect {pswd.check("Ahoy")}.to raise_error "Invalid password, must be 8+ characters."
    end
  end
end

    
    