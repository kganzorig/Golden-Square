require 'password_checker'

RSpec.describe PasswordChecker do
  it "returns true if password length greater than 8 characters" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("Khuslen1")).to eq true
  end

  it "returns fail if password length less than 8 characters" do
    password_checker = PasswordChecker.new
    expect {password_checker.check("Hello")}.to raise_error "Invalid password, must be 8+ characters."
  end
end 