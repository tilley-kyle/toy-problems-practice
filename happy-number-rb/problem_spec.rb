# require 'spec_helper'

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
  while n != 1 donhbsaw m
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

describe "Happy Number" do
  it "should return 'true' when input is '1'" do
    expect(is_happy(1)).to eq(true)
  end
  it "should return 'true' when input is '31'" do
    expect(is_happy(31)).to eq(true)
  end
  it "should return 'ture' when input is '19'" do
    expect(is_happy(19)).to eq(true)
  end

  it "should return 'false' when input is '0'" do
    expect(is_happy(0)).to eq(false)
  end
  it "should return 'false' when input is '6'" do
    expect(is_happy(6)).to eq(false)
  end
end