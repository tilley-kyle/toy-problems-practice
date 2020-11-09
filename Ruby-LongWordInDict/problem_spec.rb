require_relative './problem.rb'

describe "longest words" do
  it "should return 'apple'" do
    expect(longest_word(["a", "banana", "app", "appl", "ap", "apply", "apple"])).to eq('apple')
  end

  it "should return 'world'" do
    expect(longest_word(["w","wo","wor","worl", "world"])).to eq('world')
  end

end