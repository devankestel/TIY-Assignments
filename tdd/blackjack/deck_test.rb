require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './deck'

class DeckTest < MiniTest::Test
  def setup
    @deck = Deck.new

    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]
    names = ["Ace", 2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King"]
    @ordered_deck = []
    suits.each do |suit|
      names.each do |name|
        @ordered_deck << Card.new(suit, name)
      end
    end
    @dealt_deck = Deck.new
    @dealt_card = @dealt_deck.deal
  end

  def test_deck_class_exists 
    assert Deck
  end
  def test_new_deck_exists
    assert @deck
  end
  def test_deck_has_cards
    assert @deck.cards
  end
  def test_deck_has_52_cards
    assert_equal @deck.cards.length, 52
  end
  def test_deck_has_52_unique_cards
    assert_equal @deck.cards.uniq, @deck.cards
  end
  def test_cards_are_shuffled
    refute_equal @ordered_deck, @deck.cards
  end
  def test_dealt_deck_has_51_cards
    assert_equal 51, @dealt_deck.cards.length
  end
  def test_dealt_deck_returns_card
    assert @dealt_card.is_a?(Card)
  end
end