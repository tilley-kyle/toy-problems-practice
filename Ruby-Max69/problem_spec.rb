require_relative './problem.rb'

describe "Maximum 69 Number" do
  it "should return 9969" do
    expect(maximum69_number(9669)).to eq(9969)
  end
  it "should return 9999" do
    expect(maximum69_number(9996)).to eq(9999)
  end
  it "should return 9999" do
    expect(maximum69_number(9999)).to eq(9999)
  end
end