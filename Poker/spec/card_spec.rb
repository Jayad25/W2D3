require 'card'

RSpec.describe Card do
  subject(:card) {Card.new} 
  describe "#initialize" do
    it "creates a deck of all 52 cards" do 
      expect(card.total_card.length).to eq(52)
    end
  end
end

# 1. create deck of 52 cards (shuffled)
# 2. distribute 5 cards to each player 
# 3. each player can choose to bet, call, or fold
# 4. each player can choose up to 3 cards to discard (go back into deck)
# 5. each player's hand is refilled to have 5 cards total
# 6. each player can choose to bet, call, raise, or fold
#    (add money to the pot)
# 7. repeat until there are no more raises (all players either call or fold)
# 8. show cards / calculate the numerical point values of each player's hand
# 9. player with highest point wins and earns all the pot money
# 10. YAY!
# 
# Useful methods
# 1) render: show or hide each player's hand

