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
    @array_of_sentence = self.split(/\?|\.|!/)
    @array_of_sentence.reject!{|item| item.empty? }
    @array_of_sentence.length
  end

end