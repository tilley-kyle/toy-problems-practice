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



describe "Relative Ranks" do
  it "should return gold, silver, bronze" do
    expect(find_relative_ranks([3,2,1])).to eq(["Gold Medal", "Silver Medal", "Bronze Medal"])
  end
  it "should return gold, bronze, 4, silver" do
    expect(find_relative_ranks([5,2,1,4])).to eq(["Gold Medal", "Bronze Medal", "4", "Silver Medal"])
  end
  it "should return gold" do
    expect(find_relative_ranks([4])).to eq(["Gold Medal"])
  end
  it "should return 4,5,gold, bronze, silver" do
    expect(find_relative_ranks([2,1,9,5,8])).to eq(["4", "5", "Gold Medal", "Bronze Medal", "Silver Medal"])
  end
end