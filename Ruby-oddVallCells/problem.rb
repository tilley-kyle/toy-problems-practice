=begin
Given n and m which are the dimensions of a matrix initialized by zeros and given an array indices where indices[i] = [ri, ci]. For each pair of [ri, ci] you have to increment all cells in row ri and column ci by 1.

Return the number of cells with odd values in the matrix after applying the increment to all indices.



Example 1:


Input: n = 2, m = 3, indices = [[0,1],[1,1]]
Output: 6
Explanation: Initial matrix = [[0,0,0],[0,0,0]].
After applying first increment it becomes [[1,2,1],[0,1,0]].
The final matrix will be [[1,3,1],[1,3,1]] which contains 6 odd numbers.
Example 2:


Input: n = 2, m = 2, indices = [[1,1],[0,0]]
Output: 0
Explanation: Final matrix = [[2,2],[2,2]]. There is no odd number in the final matrix.


Constraints:

1 <= n <= 50
1 <= m <= 50
1 <= indices.length <= 100
0 <= indices[i][0] < n
0 <= indices[i][1] < m
=end

# @param {Integer} n
# @param {Integer} m
# @param {Integer[][]} indices
# @return {Integer}

# input: integer, interger, arr of ints
# output: num
# constraints: na
# Edge: dunno
def odd_cells(n, m, indices)
  oddCounter = 0
  matrix = Array.new(n) { Array.new(m, 0) }
  indices.each do |tuple|
    puts "tuple: #{tuple}"
    row = tuple[0]
    column = tuple[1]
    matrix.each_with_index do |arr, rowIndex|
      arr.each_with_index do |element, colIndex|
        if rowIndex == row && colIndex == column
          matrix[rowIndex][colIndex] += 1
          if matrix[rowIndex][colIndex].even?
            oddCounter -= 1 unless oddCounter == 0
          else
            matrix[rowIndex][colIndex] += 1
          end
        end
      end
    end
  end
  puts "result matrix: #{matrix}"
  return oddCounter
end

odd_cells(2,3,[[0,1],[1,1]])