require '08_todo'

RSpec.describe Todo do 
  context 'initially' do
    it 'returns empty list' do
      todo = Todo.new("")
      expect(todo.task).to eq []
    end 

    it 'returns false when tasks is not done' do
      todo = Todo.new('Go to the dentist')
      expect(todo.done?).to be false
    end 

    it 'returns true when task is done'
    todo = Todo.new('Go to the dentist')
    todo.mark_done!
    expect(todo.done?).to be true
  end
end 