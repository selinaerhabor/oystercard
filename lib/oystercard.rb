class Oystercard

  attr_reader :balance
  attr_accessor :in_journey

  MIN_BALANCE = 1
  MAX_BALANCE_LIMIT = 90

  def initialize
    @balance = 0
    @in_journey
  end

  def top_up(amount)
    if balance + amount > MAX_BALANCE_LIMIT
      raise "Invalid amount, maximum balance limit is #{MAX_BALANCE_LIMIT}"
    end
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def touch_in
    fail "Less than £1" if @balance < MIN_BALANCE
    @in_journey = true
  end

  def touch_out
    deduct(MIN_BALANCE)
    @in_journey = false
  end

  # private
  #
  def deduct(gbp)
      @balance -= gbp
  end
end
