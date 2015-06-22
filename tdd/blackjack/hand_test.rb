require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './hand'

class HandTest < MiniTest::Test
  def setup
    @deck = Deck.new
    @hand = Hand.new(@deck)
    @face_hand = Hand.new(Deck.new)
    @face_hand.cards[0] = Card.new("Diamonds", "Jack")
    @face_hand.cards[1] = Card.new("Clubs", "King")
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
  def test_hand_has_total
    assert @hand.total
  end
  def test_total_of_two_face_cards_is_20
    assert_equal 20, @face_hand.total
  end

end