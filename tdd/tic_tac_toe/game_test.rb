require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './board'
require './player'

class TicTacToeTest < MiniTest::Test
  def setup
    @new_board = Board.new
    @new_player = Player.new("")
  end
  
  #test board

  def test_board_class_exists
    assert @new_board
  end
  def test_new_board_is_empty?
    assert_equal true, @new_board.empty?
  end
  def test_modified_board_is_full?
    modified_board = @new_board
    for i in 0..2
      for j in 0..2
        seed = rand(2)
        if seed == 0
          mark = "X"
        else
          mark = "O"
        end
        modified_board.modify(i, j, mark)
      end #for i
    end #for j
    assert_equal true, modified_board.full?
  end
  def test_empty_board_is_not_full?
    assert_equal false, @new_board.full?
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
  def test_new_board_can_be_modifed_with_X
    modified_board = @new_board
    modified_board.modify(1, 1, "X")
    assert_equal "X", modified_board.values[1][1]
  end
  def test_new_board_can_be_modifed_with_X
    modified_board = @new_board
    modified_board.modify(1, 1, "X")
    assert_equal "X", modified_board.values[1][1]
  end
  def test_modified_board_is_not_empty?
    modified_board = @new_board
    modified_board.modify(1, 1, "X")
    assert_equal false, modified_board.empty?
  end


  #test wins

  def test_row_X_win?
    row_win_board = @new_board
    row_win_board.modify(0, 0, "X")
    row_win_board.modify(0, 1, "X")
    row_win_board.modify(0, 2, "X")
    assert_equal true, row_win_board.win?
  end
  def test_row_X_win?
    row_win_board = @new_board
    row_win_board.modify(0, 0, "O")
    row_win_board.modify(0, 1, "O")
    row_win_board.modify(0, 2, "O")
    assert_equal true, row_win_board.win?
  end
  def test_row_X_O_does_not_win?
    row_win_board = @new_board
    row_win_board.modify(0, 0, "O")
    row_win_board.modify(0, 1, "X")
    row_win_board.modify(0, 2, "O")
    assert_equal false, row_win_board.win?
  end
  def test_col_X_win?
    col_win_board = @new_board
    col_win_board.modify(0, 1, "X")
    col_win_board.modify(1, 1, "X")
    col_win_board.modify(2, 1, "X")
    assert_equal true, col_win_board.win?
  end
  def test_col_O_win?
    col_win_board = @new_board
    col_win_board.modify(0, 1, "O")
    col_win_board.modify(1, 1, "O")
    col_win_board.modify(2, 1, "O")
    assert_equal true, col_win_board.win?
  end
  def test_col_X_O_does_not_win?
    col_win_board = @new_board
    col_win_board.modify(0, 1, "O")
    col_win_board.modify(1, 1, "X")
    col_win_board.modify(2, 1, "O")
    assert_equal false, col_win_board.win?
  end
  def test_diag_X_win?
    diag_win_board = @new_board
    diag_win_board.modify(0, 0, "X")
    diag_win_board.modify(1, 1, "X")
    diag_win_board.modify(2, 2, "X")
    assert_equal true, diag_win_board.win?
  end
  def test_diag_O_win?
    diag_win_board = @new_board
    diag_win_board.modify(0, 0, "O")
    diag_win_board.modify(1, 1, "O")
    diag_win_board.modify(2, 2, "O")
    assert_equal true, diag_win_board.win?
  end
  def test_diag_X_O_does_not_win?
    diag_win_board = @new_board
    diag_win_board.modify(0, 0, "O")
    diag_win_board.modify(1, 1, "X")
    diag_win_board.modify(2, 2, "O")
    assert_equal false, diag_win_board.win?
  end

  #test player methods
  def test_player_has_mark
    assert @new_player.mark
  end
end