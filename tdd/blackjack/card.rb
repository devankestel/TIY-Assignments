class Card
  attr_accessor :suit, :name
  def initialize(suit, name)
    @suit = suit
    @name = name
  end
  def to_s
    if @name.is_a?(String)
      if @name.downcase == "ace"
        return "An #{@name} of #{@suit}."
      end
    end
    "A #{@name} of #{@suit}."
  end
  def value
    if @name.is_a?(String)
      if @name.downcase == "ace"
        @value = 1
      else
        @value = 10
      end
    else
      @value = @name
    end
  end
end