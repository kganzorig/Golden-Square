#A method called count_words that takes a string as an argument 
#  and returns the number of words in that string.

require 'count_words'

RSpec.describe 'count_words method' do 
  it 'returns a count of the words in given string' do
    result = count_words("one two three four")
    expect(result).to eq 4
  end 

  it 'returns count for 2 words given in string' do 
    result = count_words("one two")
    expect(result).to eq 2
  end
end 
