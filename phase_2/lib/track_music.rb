class TrackMusic

  def initialize
    @title = []
  end 

  def add(title)
    @title << title
  end

  def list
    return @title 
  end
end 
