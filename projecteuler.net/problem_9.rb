# Special Pythagorean triplet
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Fibonacci numbers in Pythagorean triples
# Starting with 5, every second Fibonacci number is the length of the hypotenuse
# of a right triangle with integer sides, or in other words, the largest number
# in a Pythagorean triple. The length of the longer leg of this triangle is
# equal to the sum of the three sides of the preceding triangle in this series
# of triangles, and the shorter leg is equal to the difference between the
# preceding bypassed Fibonacci number and the shorter leg of the preceding triangle.

# http://www.friesian.com/pythag.htm
# a = 2pq
# b = p**2 - q**2
# c = p**2 + q**2
# Here p and q must be odd integers, with p > q, and with no common divisors.
# http://stackoverflow.com/questions/2817848/find-pythagorean-triplet-for-which-a-b-c-1000

def pythagorean_special_tripplet(number)
  a = 1
  while a <= (number / 3)
    b = a + 1
    while b <= (number / 2)
      c = number - a - b
      if (a**2 + b**2 == c**2)
        puts("a=%s b=%s c=%s" % [a, b, c])
        puts("a+b+c = %s" % (a+b+c))
        puts("abc = %s" % (a*b*c))
      end
      b += 1
    end
    a += 1
  end
end

pythagorean_special_tripplet(1000)
