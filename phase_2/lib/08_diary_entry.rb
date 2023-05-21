class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
  end

  def title
   @title
  end

  def contents
   @contents
  end

  def count_words
    return 0 if @contents.empty?
    @contents.split(" ").length
  end

  def reading_time(wpm) 
    fail "WPM must be positive" unless wpm.positive? 
    return (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
  end
end