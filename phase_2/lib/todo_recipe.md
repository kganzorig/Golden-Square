# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Reminder
  def initialize(name) # name is a string
    # ...
  end

  def add(task) # task is a string
  # return nothing 
  end

  def list()
   # Returns a list of tasks to do as strings
   # Does not include completed ones
  end

  def complete(task)
  # task is a string representing a task to mark complete
  # returns nothing
  # fails if the task doesn't exist
  end 
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.list # => ["Wash the car"]

# 3
todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.list # => ["Wash the car", "Wash the dog"]

# 4 
todo_list = TodoList.new 
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.complete ("Wash the car")
todo_list.list # => ["Wash the dog"]

# 5 
todo_list = TodoList.new 
todo_list.add("Wash the car")
todo_list.complete ("Wash the sheep")
todo_list.list # fails 'No such tasks'.
_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->


<!-- END GENERATED SECTION DO NOT EDIT -->