require '08_diary'

RSpec.describe Diary do
  context "initially" do
    it 'returns empty list' do
      diary = Diary.new
      expect(diary.all).to eq []
    end
  end

  it "has a word count of 0" do
    diary = Diary.new
    expect(diary.count_words).to eq 0
  end 

  it "has a reading time of 0" do
    diary = Diary.new
    expect(diary.reading_time(2)).to eq 0
  end 

  it "has a best readble entry of nil" do
    diary = Diary.new
    expect(diary.find_best_entry_for_reading_time(2,1)).to eq nil
  end
end 
  