require 'greet'

RSpec.describe "greet method" do 
  it "returns 'Hello, Khuslen!'" do 
    result = greet("Khuslen")
    expect(result).to eq "Hello, Khuslen!"
  end
end 