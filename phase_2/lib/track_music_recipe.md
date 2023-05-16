# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Reminder
  def initialize # name is a string
    # ...
  end

  def add(title) # task is a string
  # return nothing 
  end

  def list()
   # Returns a list of tasks to do as strings
   # Does not include completed ones
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
track_music = TrackMusic.new
track_music.list # => []

# 2
track_music = TrackMusic.new
track_music.add("Barbie Girl")
track_music.list # => ["Barbie Girl"]

# 3
track_music = TrackMusic.new
track_music.add("Barbie Girl")
track_music.add("Teen Spirit")
track_music.list # => ["Barbie Girl", "Teen Spirit"]

# 5 
track_music = TrackMusic.new 
track_music.add("")
track_music.list # fails 'No songs given'.
_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._