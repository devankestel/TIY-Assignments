class Board
  attr_reader :values

  def initialize
    values = [[],[],[]]
      values.each do |row|
        3.times do
        row << "_" 
      end
    end
    @values = values
  end

  def empty?
    @values.flatten.all?{|value| value == "_"}
  end
  def to_s
    display = ""
    @values.each do |row|
      display += "#{row[0]} #{row[1]} #{row[2]}\n" 
    end
    return display
  end
  def cols
    col1 = []
    col2 = []
    col3 = []
    cols = [col1, col2, col3]
    @values.each do |row|
      col1 << row[0]
      col2 << row[1]
      col3 << row[2]
    end
  end
  def diags
    diag1 = [values[0][0], values[1][1], values[2][2]]
    diag2 = [values[2][0], values[1][1], values[0][2]]
    diags = [diag1, diag2]
  end

end