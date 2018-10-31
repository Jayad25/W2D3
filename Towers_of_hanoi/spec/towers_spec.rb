require 'towers'

RSpec.describe Towers do 
  subject(:game) {Towers.new}
  describe "#initialize" do 
    it "create array of 3 elements" do 
      expect(game.towers).to eq([[3,2,1],[],[]])
      
    end
  end
  
  describe "#move" do 
    it "move disc" do 
      
    end
  end
  
  describe "#won" do 
    game = Towers.new
    context "when tower2 wins" do 
      game.towers[1] = [3,2,1]
      it "tower2 wins" do
        expect(game).to be_won
      end
    end
      context "when game lost" do 
        game.towers[1] = [3,2]
        game.towers[0] = [1]
        it "tower2 wins" do
          expect(game).to_not be_won
        end
      end
    end
  end

