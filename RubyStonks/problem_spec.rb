require_relative './problem.rb'


describe "max profit method" do
  it "should return 1" do
    expect(max_profit([0,1])).to eq(1)
  end
  it "should return 0" do
    expect(max_profit([1,0])).to eq(0)
  end
  it "should return 5" do
    expect(max_profit([1,3,6,2,1,4])).to eq(5)
  end
end