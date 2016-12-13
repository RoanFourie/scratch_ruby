# Summation of Primes
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.
def is_prime(number)
    if (number == 2) || (number == 3)
        return true
    end
    if (number % 2 == 0) || (number % 3 == 0)
        return false
    end
    if number == 1
        return false
    end
    divisor = 6
    while ((divisor * divisor - 2 * divisor + 1) <= number)
        if (number % (divisor -1) == 0)
            return false
        end
        if (number % (divisor + 1) == 0)
            return false
        end
        divisor += 6
    end
    # Failed all above false tests thus is true (is a prime)
    return true
end

def next_prime(number)
    n = number + 1
    while !is_prime(n)
        n += 1
    end
    return n
end

def get_all_primes(number)
    result = []
    n = 1
    while n <= number
        if is_prime(n)
            result << n
        end
        n += 1
    end
    return result
end

def sum_of_primes(number)
    result = 0
    n = 1
    while n <= number
        if is_prime(n)
            result += n
        end
        n += 1
    end
    return result
end

puts("Sum of primes for 10 is: %s" % (sum_of_primes(10)))
puts("Sum of primes for 2000000 is: %s" % (sum_of_primes(2000000)))
