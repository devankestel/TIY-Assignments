require './card'

class Deck
  attr_accessor :cards
  def initialize
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    names = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
    
    @cards = []


    suits.each do |suit|
      names.each do |name|
        @cards << Card.new(suit, name)
      end
    end
    
  end
end