# Smallest multiple

# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

# https://en.wikipedia.org/wiki/Least_common_multiple
# In arithmetic and number theory, the least common multiple, lowest common
# multiple, or smallest common multiple of two integers a and b, usually denoted
# by LCM(a, b), is the smallest positive integer that is divisible by both a
# and b.[1] Since division of integers by zero is undefined, this definition has
# meaning only if a and b are both different from zero.
#
# Example[edit]
# What is the LCM of 4 and 6?
#
# Multiples of 4 are:
#
# 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, ...
# and the multiples of 6 are:
#
# 6, 12, 18, 24, 30, 36, 42, 48, 54, 60, 66, 72, ...
# Common multiples of 4 and 6 are simply the numbers that are in both lists:
#
# 12, 24, 36, 48, 60, 72, ....
# So, from this list of the first few common multiples of the numbers 4 and 6,
# their least common multiple is 12.

# https://www.quora.com/What-is-the-fastest-way-to-compute-the-LCM-of-N-numbers
# One simple method that I can think of is using Euclid's algorithm.
# Steps:
# ->Find LCM of 2 numbers using Euclid's method
# ->Keep on calling the findLCM method with the previously calculated LCM and
#       the next number in the list
# ->The algorithm can be optimized by passing the numbers in a certain order
#       that make the LCM method faster

def smallest_multiple(number)
    a = 1
    (1..number).each do |n|
        a = n.lcm(a)
    end
    return a
end

puts("10 : %s" % smallest_multiple(10))
puts("20 : %s" % smallest_multiple(20))
