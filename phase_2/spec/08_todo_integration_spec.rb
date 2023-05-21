require '08_todo'
require '08_todo_list'

RSpec.describe 'integration' do
  context 'after adding tasks to do' do
    it 'lists out tasks in a todo list' do
      list = TodoList.new
      task_1 = Todo.new('Go to the dentist')
      task_2 = Todo.new('Change bedsheets')
      list.add(task_1)
      list.add(task_2)
      expect(list.incomplete).to eq [task_1, task_2] 
    end

    describe 'complete' do
      it 'marks tasks that have been done as complete' do
        list = TodoList.new
        task_1 = Todo.new('Go to the dentist')
        task_2 = Todo.new('Change bedsheets')
        list.add(task_1)
        list.add(task_2)
        task_1.mark_done!
        expect(list.complete).to eq [task_1] 
        expect(list.incomplete).to eq [task_2]
      end 
    end   
end 