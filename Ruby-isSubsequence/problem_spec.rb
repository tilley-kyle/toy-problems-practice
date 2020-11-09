require_relative "./problem.rb"

describe "Is Subsequence" do
  it "should return true" do
    expect(is_subsequence('a', 'ab')).to eq(true)
  end

  it "should return true" do
    expect(is_subsequence('87f', 'fke87fsj')).to eq(true)
  end

  it "should return false" do
    expect(is_subsequence('piano', 'key')).to eq(false)
  end

  it "should return false" do
    expect(is_subsequence('piano', 'ano')).to eq(false)
  end
end