class Oystercard

  attr_reader :balance
  attr_accessor :in_journey

  CHARGE = 1.20
  MIN_BALANCE = 1
  MAX_BALANCE_LIMIT = 90

  # Initializes balance to equal 0 and in_journey is false
  def initialize
    @balance = 0
    @in_journey = false
  end

  # If top up amount is greater than maximum balance limit then raise error
  def top_up(amount)
    if balance + amount > MAX_BALANCE_LIMIT
      raise "Invalid amount, maximum balance limit is #{MAX_BALANCE_LIMIT}"
    end
    @balance += amount
  end

  # If user touches in their oyster card, let error appear otherwise Make
  # in_journey to equal true:
  def touch_in
    fail "Less than £1" if @balance < MIN_BALANCE
    @in_journey = true
  end

  # If user touches in their oyster card, let error appear otherwise make
  # in_journey to equal false:
  def touch_out
    deduct(CHARGE)
    @in_journey = false
  end

  private


  # in_journey to equal false:
  def deduct(amount)
    @balance -= amount
  end

end
