require 'grammar_stats'

RSpec.describe GrammarStats do 
  it 'returns true if text begins with capital letter and ends with punctuation mark' do
  grammar_stats = GrammarStats.new
  actual = grammar_stats.check("Hello, how are you?")
  expected = true
  expect(actual).to eq expected
  end

  it 'returns false if text does not begin with both a capital letter and ends with punctuation mark' do
    grammar_stats = GrammarStats.new
    expect(grammar_stats.check("hello, how are you?")).to eq false
  end 

  context "given empty string" do
    it "fails" do
      grammar_stats = GrammarStats.new
      expect { grammar_stats.check("") }.to raise_error "No input given"
    end 
  end 

  it 'returns 100 when all the tests checked have passed' do
    grammar_stats = GrammarStats.new
    grammar_stats.check("Hello, how are you?")
    grammar_stats.check("My name is Khuslen.")
    grammar_stats.check("Today is Monday!")
    expect(grammar_stats.percentage_good).to eq 100
  end 

  it 'returns ingeger when some of the tests have passed' do
    grammar_stats = GrammarStats.new
    grammar_stats.check("hello, how are you?")
    grammar_stats.check("my name is Khuslen")
    grammar_stats.check("Today is Monday!")
    expect(grammar_stats.percentage_good).to eq 33
  end 
end 