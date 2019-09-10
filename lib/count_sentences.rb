require 'pry'

class String
   
  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    i = 0
    a = 0

    if sentence? || question? || exclamation?
      a += 1 if !self.include?(".")
      a += 1 if !self.include?("?")
      a += 1 if !self.include?("!")
      i = (self.split(".").count - 1) + (self.split("?").count - 1) + (self.split("!").count - 1) + a
    end
    i
  end
end
