class Fixnum
  def to_roman
    #array of roman numerals zero through 9
    ones = %w(I II III IV V VI VII VIII IX)
    y = %w(X L C D M)
    case self
    when 1..9
      ones[self-1]
    when 10..39
      if self % 10 == 0
        y[0] * (self / 10)
      else  
        y[0] * (self / 10) + (self % 10).to_roman
      end
    else
      
      "do not know"
    end      
  end
end