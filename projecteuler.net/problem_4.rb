# Largest palindrome product
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome(digits)
  max = (10**digits) - 1
  values = []
  sorted_values = []
  max.downto(1) do |x|
    max.downto(1) do |y|
      product = x * y
      if product.to_s == product.to_s.reverse
        values << product
      end
    end
  end
  sorted_values = values.sort.reverse
  return sorted_values[0]
end

puts(largest_palindrome(2))  # should return 9009
puts(largest_palindrome(3))  # should return 906609
