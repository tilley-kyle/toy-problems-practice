=begin
Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".

Example 1:
Input: [5, 4, 3, 2, 1]
Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
For the left two athletes, you just need to output their relative ranks according to their scores.
Note:
N is a positive integer and won't exceed 10,000.
All the scores of athletes are guaranteed to be unique.
=end

# @param {Integer[]} nums
# @return {String[]}

# input: arr of numbs
# output: arr of words
# constraints: NA
# edge: NA
def find_relative_ranks(nums)
  sortedNums = nums.sort { |a,b| b <=> a}
  nums.each_with_index do |num, i|
    if sortedNums.index(num) + 1 == 1
      nums[i] = "Gold Medal"
    elsif sortedNums.index(num) + 1 == 2
      nums[i] = "Silver Medal"
    elsif sortedNums.index(num) + 1 == 3
      nums[i] = "Bronze Medal"
    else
      nums[i] = (sortedNums.index(num) + 1).to_s
    end
  end
  return nums
end

puts find_relative_ranks([3,2,1])

