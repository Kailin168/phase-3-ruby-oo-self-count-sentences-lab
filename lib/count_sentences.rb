require 'pry'

class String

  def sentence?
    result = self.end_with?(".")
    return result
  end

  def question?
    result = self.end_with?("?")
    return result
  end

  def exclamation?
    result = self.end_with?("!")
    return result
  end

  # def count_sentences
  #   count = 0
  #   prev = ""
  #   self.split('').each do |character| 
  #     if character == "." && prev != character
  #       count += 1
  #     elsif character == "!" && prev != character
  #       count += 1
  #     elsif character == "?" && prev != character
  #       count += 1
  #     end
  #     prev=character
  #   end
  #   count
  # end

  def count_sentences
    self.split(/[\.\!\?]+/).count
  end
end
