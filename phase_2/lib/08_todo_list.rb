class TodoList
  def initialize
    @todo = []
  end

  def add(todo) # todo is an instance of Todo
    @todo << todo
    # Returns nothing
  end

  def incomplete
    @todo.reject(&:done?)
  end

  def complete
    @todo.select(&:done?)
  end

  def give_up!
    # Marks all todos as complete
  end
end