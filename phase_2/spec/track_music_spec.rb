require 'track_music'

RSpec.describe TrackMusic do 
  context 'When given a song title' do
    it 'adds onto list' do
      track_music = TrackMusic.new
      track_music.add("Barbie Girl")
      expect(track_music.list).to eq ["Barbie Girl"]
    end 

    it 'adds two songs onto list when given two titles' do
      track_music = TrackMusic.new
      track_music.add("Barbie Girl")
      track_music.add("Teen Spirit")
      expect(track_music.list).to eq ["Barbie Girl", "Teen Spirit"]
    end 

    it 'returns empty list when no songs are given' do
      track_music = TrackMusic.new
      expect(track_music.list).to eq []
    end
  end 
end 