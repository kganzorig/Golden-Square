def track_tasks(text)
  if text.include? "#TODO"
    return "You have tasks to do"
  elsif  !text.include? "#TODO"
    return "You have no tasks to do"
  end 
end 