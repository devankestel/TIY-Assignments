require './deck'
class Hand
  attr_accessor :cards
  def initialize(deck)
    card1 = deck.deal
    card2 = deck.deal
    @cards = [card1, card2]
  end
end