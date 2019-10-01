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
    sentences = self.delete(" ")
    sentences = sentences.split("?")
    sentences = sentences.join(".")
    sentences = sentences.split("!")
    sentences = sentences.join(".")
    sentences = sentences.split(".")
    sentences.reject! {|word| word == ""}
  sentences.length
  end
end