class Todo
  def initialize(task) # task is a string
    @tasks = task
    @completed = false
  end

  def task
    @tasks
  end

  def mark_done!
    @completed = true 
  end

  def done?
   @completed
  end
end