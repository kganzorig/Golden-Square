require 'counter'

RSpec.describe Counter do 
  it "produces count" do 
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end 
end 