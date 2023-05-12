def factorial(n)
  product = 1
  n += 1
  p "at the start product is #{product}"
  while n > 1
    p "loop starts n is #{n}"
    n -= 1
    p "we subtract 1 from n to get #{n}"
    product *= n
    p "we multiple product(#{product}) by n (#{n})"
    p "we get the product #{product}"
  end
  product
  p "we finally return the product #{product}"
end

puts factorial(5)
# Intended output 
# factorial(5)
# => 120
