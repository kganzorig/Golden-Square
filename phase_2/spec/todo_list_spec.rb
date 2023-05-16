require 'todo_list'

RSpec.describe TodoList do
  context "given a task" do
   it "add the task into a list" do
    todo_list = TodoList.new
    todo_list.add("Wash the car")
    expect(todo_list.list).to eq ["Wash the car"]
   end 
  end 

  it 'adds two tasks to list when given two string tasks to do' do
    todo_list = TodoList.new
    todo_list.add("Wash the car")
    todo_list.add("Wash the dog")
    expect(todo_list.list).to eq ["Wash the car", "Wash the dog"]
  end 

  it 'removes tasks from list if you have completed it' do 
    todo_list = TodoList.new 
    todo_list.add("Wash the car")
    todo_list.add("Wash the dog")
    todo_list.complete ("Wash the car")
    expect(todo_list.list).to eq ["Wash the dog"]
  end 

  it 'fails when we try to complete task not on list' do 
      todo_list = TodoList.new 
      todo_list.add("Wash the car")
      expect { todo_list.complete("Wash the sheep") }.to raise_error "No such task"
  end 

  it 'returns empty list when no tasks given' do
    todo_list = TodoList.new
    expect(todo_list.list).to eq []
  end 
end
