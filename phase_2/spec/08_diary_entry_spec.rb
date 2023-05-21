require '08_diary_entry'

RSpec.describe DiaryEntry do
  it 'contructs' do
    diary_entry = DiaryEntry.new("Monday", "Today we had")
    expect(diary_entry.title).to eq "Monday"
    expect(diary_entry.contents).to eq "Today we had"
  end

  it 'counts words in contents as an integer' do
  diary_entry = DiaryEntry.new("Monday", "Today we had")
  expect(diary_entry.count_words).to eq 3
  end

  it 'returns 1 if contents has one word' do 
    diary_entry = DiaryEntry.new("Tuesday", "One")
    expect(diary_entry.count_words).to eq 1
    
  end

  it 'returns 0 when contents is empty' do
    diary_entry = DiaryEntry.new("Tuesday", "")
    expect(diary_entry.count_words).to eq 0
  end 

  it 'returns 1 reading time if content is empty' do
    diary_entry = DiaryEntry.new("Monday", "one")
    expect(diary_entry.reading_time(2)).to eq 1
  end 

  it 'returns zero reading time if content is empty' do
    diary_entry = DiaryEntry.new("Monday", "one two three four five")
    expect(diary_entry.reading_time(2)).to eq 3
  end 

  it 'fails if wpm is zero' do
    diary_entry = DiaryEntry.new("Monday", "Hello, how are you")
    expect { diary_entry.reading_time(0) }.to raise_error "WPM must be positive"
  end
end 