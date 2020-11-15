require_relative './problem.rb'

describe "concatenation of array" do
  it "should return true" do
    expect(can_form_array([15,88],[[88],[15]])).to eq(true)
  end
  it "should return false" do
    expect(can_form_array([49,18,16], [[16,18,49]])).to eq(false)
  end
  it "should return true" do
    expect(can_form_array([85],[[85]])).to eq(true)
  end
  it "should return true" do
    expect(can_form_array([91,4,64,78], [[78],[4,64],[91]])).to eq(true)
  end
  it "should return false" do
    expect(can_form_array([1,3,5,7], [[2,4,6,8]])).to eq(false)
  end
end