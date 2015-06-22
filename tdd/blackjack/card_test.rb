require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './card'

class CardTest < MiniTest::Test
  def setup
    @card = Card.new("Diamonds", 2)
    @ace = Card.new("Spades", "Ace")
    @face_card = Card.new("Clubs", "Jack")
  end

  def test_card_class_exists 
    assert Card
  end
  def test_new_card_has_suit_and_name
    assert @card.suit && @card.name
  end
  def test_card_suit_is_diamonds
    assert_equal "Diamonds", @card.suit
  end
  def test_card_name_is_2
    assert_equal 2, @card.name
  end
  def test_card_has_value_2
    assert_equal 2, @card.value
  end
  def test_ace_has_value_1
    assert_equal 1, @ace.value
  end
  def test_face_card_has_value_10
    assert_equal 10, @face_card.value
  end
  def test_card_prints_suit_and_name
    assert_equal "A 2 of Diamonds.", @card.to_s
  end
  def test_ace_prints_suit_and_name
    assert_equal "An Ace of Spades.", @ace.to_s
  end
  def test_face_card_prints_suit_and_name
    assert_equal "A Jack of Clubs.", @face_card.to_s
  end

end