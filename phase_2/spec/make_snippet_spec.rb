require 'make_snippet'

RSpec.describe 'make_snippet method' do
  it "returns an empty string" do
    result = make_snippet("")
    expect(result).to eq ""
  end

  context "given five words in string" do
    it "returns five words" do
      result = make_snippet("one two three four five")
      expect(result).to eq "one two three four five"
    end 
  end 

  context "given six words in string" do 
    it "returns first five with a ..." do
      result = make_snippet("one two three four five six")
      expect(result).to eq "one two three four five..."
    end
  end 
end
