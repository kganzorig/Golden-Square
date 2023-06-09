require 'track_tasks'

RSpec.describe 'track_tasks method' do
  context "given a string with '#TODO'" do 
    it "returns 'You have tasks to do'" do
      expect(track_tasks("Hello here is your list of things #TODO today")).to eq "You have tasks to do"
    end 

    it "returns 'You have no tasks to do'" do
      expect(track_tasks("Today you will be resting and doing nothing else")).to eq "You have no tasks to do"
    end
  end 
end 