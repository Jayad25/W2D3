require 'deck'


RSpec.describe Deck do
  subject(:deck) {Deck.new} 
  describe "#initialize" do
    it "creates a deck of all 52 cards" do 
      expect(deck.total_card.length).to eq(52)
    end
  end
end