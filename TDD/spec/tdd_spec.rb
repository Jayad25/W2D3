require "tdd"

RSpec.describe Array do 
  # subject(:arr) {Array.new([1,2,3])}
  describe "#my_uniq" do 
    it "removes all duplicate numbers" do 
      expect([1,2,3,3,4,5,5].my_uniq).to eq([1,2,3,4,5])
    end
    
    it "return elements in order of apperence" do 
      expect([3,2,1,1,2,3,4].my_uniq).to eq([3,2,1,4])
    end
  end
  
  describe "#two_sum" do
    it "find all possible pairs of position" do
      expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
    end
    
    it "pairs are sorted such that smaller index appears before bigger index" do
      expect([-1,0,2,-2,1].two_sum).to eq([[0,4],[2,3]])
    end
  end
end

describe "#my_transpose" do 
  it "Converts row and column" do 
    expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end

describe "#more_profit_days" do
  it "returns most profitable pair of days" do
    expect(more_profit_days([3,4,2,8,10,7,1])).to eq([2, 10])
  end
end
