=begin
Say you have an array for which the ith element is the price of a given stock on day i.

If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.

Note that you cannot sell a stock before you buy one.

Example 1:

Input: [7,1,5,3,6,4]
Output: 5
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
             Not 7-1 = 6, as selling price needs to be larger than buying price.
Example 2:

Input: [7,6,4,3,1]
Output: 0
Explanation: In this case, no transaction is done, i.e. max profit = 0.
=end

# @param {Integer[]} prices
# @return {Integer}

#input: array
#output: num
#constraints: NA
#edge: Can't sell stock before you buy. Can only have 1 buy and 1 sell
def max_profit(prices)
  # declare a price holding variable and initialize it to 0
  # iterate through input prices
    # at each price compare it to the highest price in the rest of the array
      # if highest price minus price > 0 && greater than price holding variable set it to the difference
      # if not, move to next price
  # return price
  maxProfit = 0
  prices.each_with_index do |price, i|
    max_profit = price - prices.slice(i, prices.length).max unless max_profit > price - prices.slice(i, prices.length).max
  end
  return max_profit
end