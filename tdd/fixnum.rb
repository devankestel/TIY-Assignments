class Fixnum
  def to_roman
    #array of roman numerals zero through 9
    ones = %w(I II III IV V VI VII VIII IX)
    case self
    when 1..9
      ones[self-1]
    else
      "X"
      #"do not know"
    end      
  end
end