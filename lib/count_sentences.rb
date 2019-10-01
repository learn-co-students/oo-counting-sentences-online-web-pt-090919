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
    array = self.split
    new_array = []
    array.each do |i|
      if i.include?("?") || i.include?(".") || i.include?("!")
      new_array << i 
    end
  end
    new_array.count 
  end 
  
end