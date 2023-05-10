require 'gratitudes'

RSpec.describe Gratitudes do
  it "returns 'Be grateful for: friends, family'" do
  gratitudes = Gratitudes.new()
  gratitudes.add("friends")
  gratitudes.add("family")
  expect(gratitudes.format).to eq "Be grateful for: friends, family"
  end
end 