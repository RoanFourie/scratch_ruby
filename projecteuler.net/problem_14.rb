# Longest Collatz sequence

# The following iterative sequence is defined for the set of positive integers:
#
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
#
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
#
# NOTE: Once the chain starts the terms are allowed to go above one million.
def collatz_for(number)
    n = number
    counter = 1
    while n > 1
        if n % 2 == 0
            n = n / 2
            counter += 1
        else
            n = (3 * n) + 1
            counter += 1
        end
    end
    return counter
end

def longest_collatz_for(number)
    values = []
    result = 0
    # index 0 == 1000000 index 1 == 999999 etc. thus 1000000 - index
    (number.downto(number/2)).each do |i|
        values << collatz_for(i)
    end
    result = (number - values.index(values.max))
    return result
end

puts(longest_collatz_for(1000000))  # 837799
# puts(collatz_for(13))
# puts(collatz_for(9))
