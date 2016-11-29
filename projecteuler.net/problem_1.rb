# problem_1.rb
# Multiples of 3 and 5
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multipeles_of_3_and_5(value)
    i = value - 1
    sum = 0
    while i > 0 do
        if i % 3 == 0  || i % 5 == 0
            sum += i
        end
        i -= 1
    end
    return sum
end

puts multipeles_of_3_and_5(1000)
