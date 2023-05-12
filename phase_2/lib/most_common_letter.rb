def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char| 
      next if char == " "
    counter[char] += 1 
  end
p counter
  counter.to_a.max_by { |k, v| v }[0]
  p counter.to_a.max_by { |k, v| v }[0]
  
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"