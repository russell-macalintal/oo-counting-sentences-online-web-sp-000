require 'pry'

class String

  def sentence?
    self.length > 1 && self.end_with?(".")
  end

  def question?
    self.length > 1 && self.end_with?("?")
  end

  def exclamation?
    self.length > 1 && self.end_with?("!")
  end

  def count_sentences
    str_arr = self.split(/(?<=[.?!])\s*/)
    binding.pry
    count = 0
    str_arr.each do |str|
      if str.sentence? || str.question? || str.exclamation?
        count += 1
      end
    end
    count
  end
end
