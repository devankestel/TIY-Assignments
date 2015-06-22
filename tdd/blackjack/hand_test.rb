require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './hand'

class HandTest < MiniTest::Test
  def setup
    @hand = Hand.new(Deck.new)

  end

  def test_deck_class_exists 
    assert Hand
  end
  def test_new_deck_exists
    assert @hand
  end
  def test_hand_has_cards
    assert @hand.cards
  end
  def test_new_hand_has_2_cards
    assert_equal 2, @hand.cards.length 
  end
  def test_hand_has_unique_cards
    assert_equal @hand.cards.uniq, @hand.cards
  end
end