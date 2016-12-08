# problem_3.rb
# Largest prime factor
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?
#
# HELP: http://stackoverflow.com/questions/23287/largest-prime-factor-of-a-number
# =>    https://en.wikipedia.org/wiki/Pollard's_rho_algorithm
#
# Let n = 8051 and g(x) = (x2 + 1) mod 8051.
#
# i	xi	yi	GCD(| xi − yi |, 8051)
# 1	5	26	1
# 2	26	677	1
# 3	677	871	97
# start with x = 2
# n = 8051
# y = (x**2 + 1)
# f(y) = y mod n
# x = f(y)
