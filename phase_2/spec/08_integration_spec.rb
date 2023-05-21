require '08_diary.rb'
require '08_diary_entry.rb'

RSpec.describe 'integration' do
  context "after adding some entries" do
    it 'lists out the entries added' do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Monday", "Content ONE")
      diary_entry_2 = DiaryEntry.new("Tuesday", "Content TWO")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.all).to eq [diary_entry_1, diary_entry_2]
    end

    it 'counts the words of all the diary entries' do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Monday", "Content ONE")
      diary_entry_2 = DiaryEntry.new("Tuesday", "Content TWO")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.count_words).to eq 4
    end

    describe "reading time behaviour" do 
    it "calculates the reading time for all entries" do
      diary = Diary.new
      diary_entry_1 = DiaryEntry.new("Monday", "one two three")
      diary_entry_2 = DiaryEntry.new("Tuesday", "one two three")
      diary.add(diary_entry_1)
      diary.add(diary_entry_2)
      expect(diary.reading_time(2)).to eq 3
    end 

      it "calcualtes the reading time for all entries where it falls over a minute" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "one two")
        diary_entry_2 = DiaryEntry.new("Tuesday", "one two three")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect(diary.reading_time(2)).to eq 3
      end 

      it "fails when wpm is 0" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("Monday", "one two")
        diary_entry_2 = DiaryEntry.new("Tuesday", "one two three")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        expect { diary.reading_time(0) }.to raise_error("WPM must be positive")
      end 

      describe "best reading time entry behaviour" do
        context "where we just have one entry and it is readable in the time" do
          it "returns that entry" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("Monday", "one two")
            diary.add(diary_entry_1)
            result = diary.find_best_entry_for_reading_time(2, 1)
            expect(result).to eq diary_entry_1
          end 
        end 
        context "where we just have one entry and it is unreadable in the time" do
          it "returns nil" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("Monday", "one two three")
            diary.add(diary_entry_1)
            result = diary.find_best_entry_for_reading_time(2,1)
            expect(result).to eq nil
          end
        end 

        context "where we have multiple entries" do
          it "returns the longest entry the user could read in this time" do
            diary = Diary.new
            best_entry = DiaryEntry.new("Tuesday", "one two")
            diary.add(DiaryEntry.new("Monday", "one"))
            diary.add(best_entry)
            diary.add(DiaryEntry.new("Monday", "one two three"))
            diary.add(DiaryEntry.new("Tuesday", "one two three four"))
            result = diary.find_best_entry_for_reading_time(2,1)
            expect(result).to eq best_entry
          end
        end 
      end
    end
  end 
end 