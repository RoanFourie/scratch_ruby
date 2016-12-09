# Sum square difference

# The sum of the squares of the first ten natural numbers is,
# 1**2 + 2**2 + ... + 10**2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)**2 = 55**2 = 3025

# Hence the difference between the sum of the squares of the first ten
# natural numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.


def sum_of_squares(number)
    y = 0
    (1..number).each do |x|
        y += x**2
    end
    return y
end


def square_of_sum(number)
    y = 0
    (1..number).each do |x|
        y += x
    end
    return y**2
end


def sum_square_difference(number)
    return square_of_sum(number) - sum_of_squares(number)
end

puts(sum_square_difference(10))
puts(sum_square_difference(100))
