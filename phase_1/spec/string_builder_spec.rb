require 'string_builder'

RSpec.describe StringBuilder do
  it "initially returns an empty string" do
  string_builder = StringBuilder.new
  expect(string_builder.output).to eq ""
  end 
  
it "initially returns a length of zero" do
  string_builder = StringBuilder.new
  expect(string_builder.size).to eq 0
end
end 