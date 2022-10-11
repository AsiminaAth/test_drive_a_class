class GrammarStats
    def initialize
      text = @text
    end
  
    def check(text) 
      is_first_capital = text[0] == text[0].upcase
      is_last_full_stop = text[-1] == "."
      is_last_exclamation_mark = text[-1] == "!"
      is_last_none = text[-1] == ""
      is_last_question_mark = text[-1] == "?"

      if (is_first_capital && is_last_full_stop) or (is_first_capital && is_last_exclamation_mark) or (is_first_capital && is_last_question_mark)
        return true
      else
        return false
      end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    end
  end