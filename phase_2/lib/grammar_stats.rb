class GrammarStats
  def initialize
    @texts_passed = 0
    @texts_checked = 0
  end

  def check(text) # text is a string
    raise "No input given" if text.empty?
    check_text = (text[0] == text[0].capitalize && text.end_with?('.', "!", "?"))
      if check_text == true
        @texts_passed += 1
      end 
      @texts_checked += 1
      return check_text
    end 

  def percentage_good
   return percentage_of_passed_tests = ((@texts_passed / @texts_checked.to_f)*100).to_i
   
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
  end
end 