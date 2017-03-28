require('pry')
require('dogeify/all')

class String

  define_method(:dogespeak) do
    self.dogeify()
  end

  define_method(:leetspeak) do
    split_word_array=self.split(" ")
    final_array = []
    split_word_array.each do |word|
      letters=word.split("")
      join_letter = []
      rando = 0
      letters.each do |letter|
        if letter == "e"
          join_letter.push(3)
        elsif letter == "o"
          join_letter.push(0)
        elsif letter == "I"
          join_letter.push(1)
        elsif (letter == "s" && rando > 0)
          join_letter.push("z")
        else
          join_letter.push(letter)
        end
        rando = rando + 1
      end
      new_word=join_letter.join("")
      final_array.push(new_word)
    end
    final_array.join(" ")
  end
end
