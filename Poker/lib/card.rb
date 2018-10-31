class Card
attr_reader :total_card
  def initialize
    @total_card = self.populate.shuffle
  end
  
  
  def populate
    array_of_cards = []
    value = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"]
    type = ['H','C','S','D']
    value.each do |val|
      type.each do |t|
        array_of_cards << val.to_s+t unless array_of_cards.include?(val.to_s+t)
      end
    end
    
    return array_of_cards
  end
end
