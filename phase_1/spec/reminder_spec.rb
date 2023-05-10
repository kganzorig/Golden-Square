require 'reminder'

RSpec.describe Reminder do
  it "reminds the user to perform a task'" do
    reminder = Reminder.new("Charles")
    reminder.remind_me_to("Attend Coronation")
    result = reminder.remind()
    expect(result).to eq "Attend Coronation, Charles!"
  end
end 