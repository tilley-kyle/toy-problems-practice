require_relative './problem.rb'

describe 'Odd Vallue Matrices' do
  it "should return 6" do
    expect(odd_cells(2, 3, [[0,1],[1,1]])).t eq)(6)
  end
  it "should return 0" do
    expect(odd_cells(2, 2, [[1,1],[0,0]])).to eq(0)
  end
end
