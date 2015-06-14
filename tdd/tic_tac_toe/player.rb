class Player
  attr_accessor :roll, :mark, :turn, :winner
  def initialize    
    @roll = rand(6)
    @mark = nil
    @turn = false
    @winner = false
  end
  def self.set_mark(player1, player2)
    if(player1.roll >= player2.roll)
      player1.mark = "X"
      player2.mark = "O"
    else
      player1.mark = "O"
      player2.mark = "X"
    end  
  end
  def self.switch_turn(player1, player2)
    player1.turn = player1.turn.!
    player2.turn = player2.turn.!
  end
end