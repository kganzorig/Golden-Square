require 'check_codeword'

RSpec.describe "check_codeword method" do
  it "returns 'Correct! Come in." do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end 
  it "return 'Close, but nope.'" do
  result = check_codeword("hope")
  expect(result).to eq "Close, but nope."
  end 
  it "return 'WRONG!'" do
    result = check_codeword("box")
    expect(result).to eq "WRONG!"
  end 
end 

