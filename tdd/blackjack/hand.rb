require './deck'
class Hand
  attr_accessor :cards
  def initialize(deck)
    card1 = deck.deal
    card2 = deck.deal
    @cards = [card1, card2]
  end
  def total
    @total = 0
    @cards.each do |card|
      @total += card.value
    end
    @total
  end
  def hit(deck)
    @cards << deck.deal
  end
end