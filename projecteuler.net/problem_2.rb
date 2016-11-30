# problem_2.rb
# Even Fibonacci numbers
#
# each new term in the Fibonacci sequence is generated by adding the previous two
# terms. By starting with 1 and 2, the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not exceed
# four million, find the sum of the even-valued terms.

def fibonacci(value, limit=0)
    # The limit is to limit the returned values in the array to that less of the limit
    # if we called fibonacci(10, 55) we would get 1, 2, 3, 5, 8, 13, 21, 34
    # if we call fibonacci(10, 89) we would get 1, 2, 3, 5, 8, 13, 21, 34, 55
    # if we call fibonacci(10, 100) we would get 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
    # if we call fibonacci(10) we would get 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
    i = 0
    list_of_fibonacci = []
    while i < value
        if i == 0
            list_of_fibonacci << 1
            i += 1
        elsif i == 1
            list_of_fibonacci << 2
            i += 1
        elsif list_of_fibonacci[i - 1] >= limit && limit != 0
            return list_of_fibonacci
        else
            list_of_fibonacci << (list_of_fibonacci[i - 2] + list_of_fibonacci[i - 1])
            i += 1
        end
    end
    return list_of_fibonacci
end

def even(values)
    return values.each.select {|i| i.even?}
end

total = 0
even(fibonacci(4000000, 4000000)).each {|elem| total += elem}
# even(fibonacci(10)).each {|elem| total += elem}
puts total
