=begin
Write an algorithm to determine if a number n is "happy".

A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

Return True if n is a happy number, and False if not.

Example:

Input: 19
Output: true
Explanation:
12 + 92 = 82
82 + 22 = 68
62 + 82 = 100
12 + 02 + 02 = 1
=end

# @param {Integer} n
# @return {Boolean}

# Input: num
# output: bool
# Const: NA
# Edge: input is 1

def is_happy(n)
  tracker = {}
  while n != 1 do
    puts tracker
    n = n.to_s.split('').reduce(0) { |sum, elem| sum += elem.to_i ** 2}
    if n == 1
      return true
    elsif tracker[n] == true
      return false
    else
      tracker[n] = true
    end
  end
  return true
end
