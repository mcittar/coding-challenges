
def anagrams(a, b)
  letters = Array.new(26) { 0 }
  a.chars.each { |el| letters[el.ord - "a".ord] += 1 }
  b.chars.each { |el| letters[el.ord - "a".ord] -= 1 }
  output = 0
  letters.each { |el| output += el.abs }
  p letters
  p output
end



p anagrams("cde", "abc") == 4
