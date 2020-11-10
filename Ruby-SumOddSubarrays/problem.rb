=begin
Given an array of positive integers arr, calculate the sum of all possible odd-length subarrays.

A subarray is a contiguous subsequence of the array.

Return the sum of all odd-length subarrays of arr.



Example 1:

Input: arr = [1,4,2,5,3]
Output: 58
Explanation: The odd-length subarrays of arr and their sums are:
[1] = 1
[4] = 4
[2] = 2
[5] = 5
[3] = 3
[1,4,2] = 7
[4,2,5] = 11
[2,5,3] = 10
[1,4,2,5,3] = 15
If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58
Example 2:

Input: arr = [1,2]
Output: 3
Explanation: There are only 2 subarrays of odd length, [1] and [2]. Their sum is 3.
Example 3:

Input: arr = [10,11,12]
Output: 66


Constraints:

1 <= arr.length <= 100
1 <= arr[i] <= 1000
=end

# @param {Integer[]} arr
# @return {Integer}

# input: arr
# output: num
# constraints: arrays must be contiguous. must be odd length
# edge: NA
def sum_odd_length_subarrays(arr)
  resultSum = 0
  inputArrLength = arr.length
  subArrLength = 1
  currStartingIndex = 0
  while subArrLength <= inputArrLength do
    if currStartingIndex <= inputArrLength - subArrLength && subArrLength <= inputArrLength
      resultSum += arr.slice(currStartingIndex, subArrLength).reduce(:+)
      currStartingIndex += 1
    elsif currStartingIndex >  inputArrLength - subArrLength && subArrLength <= inputArrLength
      currStartingIndex = 0
      subArrLength += 2
    end
  end
  return resultSum
end