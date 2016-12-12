# 10001st prime
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10 001st prime number?


# http://stackoverflow.com/questions/30052316/find-next-prime-number-algorithm
# Sieve of Eratosthenes is not the best solution when only one prime number should be found. Here is the solution which is useful for that purpose. It is based on the idea that all prime numbers are in form of 6k+-1, so I'm only testing 2, 3 and numbers in form 6+-1. Of course, the loop quits when divisor breaches sqrt(a) because all such numbers have already been tested.
#
# bool IsPrime(int number)
# {
#
#     if (number == 2 || number == 3)
#         return true;
#
#     if (number % 2 == 0 || number % 3 == 0)
#         return false;
#
#     int divisor = 6;
#     while (divisor * divisor - 2 * divisor + 1 <= number)
#     {
#
#         if (number % (divisor - 1) == 0)
#             return false;
#
#         if (number % (divisor + 1) == 0)
#             return false;
#
#         divisor += 6;
#
#     }
#
#     return true;
#
# }
#
# int NextPrime(int a)
# {
#
#     while (!IsPrime(++a))
#     { }
#     return a;
#
# }
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

def find_nth_prime(number)
    x = 2
    a_prime = 2
    if number == 1
        return 2
    end
    if number == 2
        return 3
    end
    if number == 3
        return 5
    end
    while x <= number
        a_prime = next_prime(a_prime)
        x += 1
    end
    return a_prime
end

puts(find_nth_prime(10001))
