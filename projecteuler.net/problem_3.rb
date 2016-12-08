# problem_3.rb
# Largest prime factor
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#

# A prime number can only be divided by 1 or itself, so it cannot be factored any
# further! Every other whole number can be broken down into prime number factors.
# It is like the Prime Numbers are the basic building blocks of all numbers.


# HELP: http://stackoverflow.com/questions/23287/largest-prime-factor-of-a-number
# =>    https://en.wikipedia.org/wiki/Pollard's_rho_algorithm
# I couldn't understand and get pollard's rho algorithm

# http://stackoverflow.com/questions/23287/largest-prime-factor-of-a-number
# http://thetaoishere.blogspot.co.za/2009/04/finding-largest-prime-factor.html

def largest_prime_factor(number)
  result = 0
  multiples_of_six = 6

  if number % 2 == 0
    result = 2
    while (number % 2 == 0)
      number = number / 2
    end
  end

  if number % 3 == 0
    result = 3
    while (number % 3 == 0)
      number = number / 3
    end
  end

  while (multiples_of_six - 1) <= number
    if number % (multiples_of_six - 1) == 0
      result = multiples_of_six - 1
      while number % result == 0
        number = number / result
      end
    end
    if number % (multiples_of_six + 1) == 0
      result = multiples_of_six + 1
      while number % result == 0
        number = number / result
      end
    end
    multiples_of_six += 6
  end
  return result
end
# 
# puts("13195 : %s" % largest_prime_factor(13195))
# puts("600851475143 : %s" % largest_prime_factor(600851475143))
