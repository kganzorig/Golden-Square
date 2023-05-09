require 'report_length'

RSpec.describe "report_length method" do 
  it "returns 'This string was 5 characters long.'" do
    result = report_length("Happy")
    expect(result).to eq "This string was 5 characters long."
  end
  it "returns 'This string was 4 characters long.'" do
    result = report_length("Cool")
    expect(result).to eq "This string was 4 characters long."
  end
end 