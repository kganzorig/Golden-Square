require '08_todo_list'
require '08_todo'

RSpec.describe TodoList do
  context "given a task" do
    it "add the todo into a list" do
     todo_list = TodoList.new
     todo = Todo.new("Go to the dentist")
     todo_list.add(todo)
     expect(todo_list.incomplete).to eq [todo]
    end 
  end 

  describe "complete" do 
    it "returns todos which have been completed" do
    todo_list = TodoList.new
    todo_1 = Todo.new("Go to the dentist")
    todo_2 = Todo.new("Change bedsheets")
    todo_3 = Todo.new("Hoover carpet")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.add(todo_3)
    todo_2.mark_done!
    expect(todo_list.complete).to eq [todo_2]
    end
  end

  describe 'incomplete' do
    it 'returns incompleted todos' do
    todo_list = TodoList.new
    todo_1 = Todo.new("Go to the dentist")
    todo_2 = Todo.new("Change bedsheets")
    todo_3 = Todo.new("Hoover carpet")
    todo_list.add(todo_1)
    todo_list.add(todo_2)
    todo_list.add(todo_3)
    todo_2.mark_done!
    expect(todo_list.incomplete).to eq [todo_1, todo_3]
    end 
  end
end 