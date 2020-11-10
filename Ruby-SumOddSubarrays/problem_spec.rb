require_relative './problem.rb'

describe "Sum of all Odd Length Subarrays" do
  it "should return 58" do
    expect(sum_odd_length_subarrays([1,4,2,5,3])).to eq(58)
  end
  it "should return 3" do
    expect(sum_odd_length_subarrays([1,2])).to eq(3)
  end
  it "should return 66" do
    expect(sum_odd_length_subarrays([10,11,12,])).to eq(66)
  end
end
