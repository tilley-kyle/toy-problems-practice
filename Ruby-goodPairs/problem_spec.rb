require_relative './problem.rb'

describe "Good Pairs" do
  it "should return 4" do
    expect(num_identical_pairs([1,2,3,1,1,3])).to eq(4)
  end
  it "should return 6" do
    expect(num_identical_pairs([1,1,1,1])).to eq(6)
  end
  it "should return 0" do
    expect(num_identical_pairs([1,2,3])).to eq(0)
  end
end
