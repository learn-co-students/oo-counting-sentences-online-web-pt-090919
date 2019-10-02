require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else 
      false
    end
  end


  def question?
    if self.end_with?("?")
      true
    else 
      false
    end
  end

  def exclamation?
    self.end_with?("!")  #why it works without if/else ?
  end

  def count_sentences
  self.split(/[\.!?] /).count  # why we need space after "/"??
  end
end