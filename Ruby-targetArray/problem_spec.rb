require_relative './problem.rb'

describe "Create Target Array" do
  it "should return [0,4,1,3,2]" do
    expect(create_target_array([0,1,2,3,4], [0,1,2,2,1])).to eq([0,4,1,3,2])
  end
  it "should return [0,1,2,3,4]" do
    expect(create_target_array([1,2,3,4,0], [0,1,2,3,0])).to eq([0,1,2,3,4])
  end
  it "should return [1]" do
    expect(create_target_array([1], [0])).to eq([1])
  end
end
