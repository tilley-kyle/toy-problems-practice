/*Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".

Example 1:
Input: [5, 4, 3, 2, 1]
Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
For the left two athletes, you just need to output their relative ranks according to their scores.
Note:
N is a positive integer and won't exceed 10,000.
All the scores of athletes are guaranteed to be unique. */


//input: arr of nums
//output: arr of strings
//constraints: N is pos int 1 - 10,000
//Edge: NA
var findRelativeRanks = function(nums) {
  //make new arr that is sorted nums arr
  //iterate through nums arr
      //if index of nums arr in sorted array is top three ouput that
  //return thrid array
  const sortedNums = nums.sort((a,b) => b - a);
};

findRelativeRanks([1,5,2]);
module.exports = findRelativeRanks;