"""I have a multidimensional array in Ruby which looks like this:

[[1,12], [1,5], [1,6], [5,12], [6,12], [12,5], [12,6]]
I need to combine it into a new multidimensional array, grouping values together, to form valid combinations of (n) positions (n being the size of each element in the original array):

[
  [[1,5,6], [12]],
  [[1,12], [5,6]]
]
The purpose of this is to take an array of n-place permutations, and generate the smallest possible multidimensional array that lists the valid numbers in each place (while not including combinations that aren't present in the original array).

How can a multidimensional array containing n-place permutations be reduced down to the array described above? The built-in (and brilliant) array methods in Ruby don't seem to include a function for this, and short of generating every possible combination and then testing them against the original permutations, I'm not sure how to get it right.
"""


a = [[1, 12], [1, 5], [1, 6], [5, 12], [6, 12], [12, 5], [12, 6]]

h1 = Hash.new { |h, k| h[k] = [] }
a.each { |k, v| h1[v] << k }
h1
#=> {12=>[1, 5, 6], 5=>[1, 12], 6=>[1, 12]}

h2 = Hash.new { |h, k| h[k] = [] }
h1.each { |k, v| h2[v] << k }
h2
#puts "h2 = #{h2}"
#=> {[1, 5, 6]=>[12], [1, 12]=>[5, 6]}

result = h2.to_a
#=> [
#     [[1, 5, 6], [12]],
#     [[1, 12], [5, 6]]
#   ]
puts "result = #{result}"


# The condensed array can be expanded via:
[[[1, 5, 6], [12]], [[1, 12], [5, 6]]].flat_map { |a, b| a.product(b) }
#=> [[1, 12], [5, 12], [6, 12], [1, 5], [1, 6], [12, 5], [12, 6]]
