=begin
Given an array of integers nums.

A pair (i,j) is called good if nums[i] == nums[j] and i < j.

Return the number of good pairs.



Example 1:

Input: nums = [1,2,3,1,1,3]
Output: 4
Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
Example 2:

Input: nums = [1,1,1,1]
Output: 6
Explanation: Each pair in the array are good.
Example 3:

Input: nums = [1,2,3]
Output: 0


Constraints:

1 <= nums.length <= 100
1 <= nums[i] <= 100
=end

# @param {Integer[]} nums
# @return {Integer}


def num_identical_pairs(nums)
  goodPairCounter = 0
  firstPointer = 0
  secondPointer = 1
  while firstPointer < nums.length - 1 do
    if nums[firstPointer] == nums[secondPointer] && firstPointer != secondPointer
      goodPairCounter += 1
    end
    if secondPointer == nums.length - 1
      firstPointer += 1
      secondPointer = firstPointer
    end
    secondPointer += 1
  end
  return goodPairCounter
end