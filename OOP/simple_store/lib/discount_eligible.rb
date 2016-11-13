module DiscountEligible

  def has_discount?
    days_to_expire >= 0 && days_to_expire <= 30
  end

  def discount_percentage
    if has_discount?
      -(0.6/30) * days_to_expire + 0.6
    else
      0
    end
  end

  #
  # @return [Fixnum] The number of days until the product expiration date.
  #
  def days_to_expire
  @conta = @expiration_date[8,2].to_i
  @hoje = Date.today.to_s
  @conta - @hoje[8,2].to_i  
  end

  #
  # @return [Float] The amount of discount, with at most 2 decimal places.
  #
  def discount_amount
   @@desconto = format("%.2f", discount_percentage*price).to_f
  end

  #
  # @return [Float] the price of the product considering the discount_amount.
  # The value must be rounded to at most 2 decimal places.
  #
  def discounted_price
    @new_price = format("%.2f", @price - @@desconto).to_f 
  end
end
