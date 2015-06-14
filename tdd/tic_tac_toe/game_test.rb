require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './board'
require './player'

class TicTacToeTest < MiniTest::Test
  def setup
    @new_board = Board.new
  end
  def test_board_class_exists
    assert @new_board
  end
  def test_new_board_is_empty
    assert_equal true, @new_board.empty?
  end
  def test_new_board_has_values
    assert @new_board.values
  end
  def test_values_is_array
    assert @new_board.values.is_a?(Array)
  end
  def test_new_board_has_3_rows
    #each row is an element of the outer values array
    assert_equal 3, @new_board.values.size
  end
  def test_new_board_each_row_has_3_cols
    assert_equal [true, true, true], @new_board.values.map{|row| row.size == 3}
  end
  # Commented out because empty? method now accomplishes same task
  # def test_new_board_all_values_are_underscores
  #   assert_equal true, @new_board.values.flatten.all?{|value| value == "_"}
  # end
  def test_new_board_displays_3_rows_of_underscores
    assert_equal "_ _ _\n_ _ _\n_ _ _\n", @new_board.to_s
  end
  def test_new_board_has_3_cols
    assert_equal 3, @new_board.cols.size
  end
  def test_new_board_has_2_diags
    assert_equal 2, @new_board.diags.size
  end
end