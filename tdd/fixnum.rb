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
    when 40..49
      if self % 10 == 0
        y[0] + y[1] 
      else
        y[0] + y[1] + (self % 10).to_roman
      end
    when 50..89
      if self % 10 == 0
        y[1] + y[0] * ((self - 50) / 10)
      else
        y[1] + y[0] * ((self - 50) / 10) + (self % 10).to_roman
      end
    when 90..99
      if self % 10 == 0
        y[0] + y[2]
      else
        y[0] + y[2] + (self % 10).to_roman
      end
    when 100..399
      if self % 100 == 0
        y[2] * (self / 100)
      else
        y[2] * (self / 100) + (self % 100).to_roman
      end
    when 400..499
      if self % 100 == 0
        y[2] + y[3]
      else
        y[2] + y[3] + (self % 100).to_roman 
      end
    when 500..899
      if self % 500 == 0
        y[3]
      else
        y[3] + (self % 500).to_roman
      end
    else
      
      "do not know"
    end      
  end
end