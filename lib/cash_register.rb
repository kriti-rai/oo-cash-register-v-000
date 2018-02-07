
class CashRegister
  attr_accessor :total, :discount, :price, :qty


  def initialize(total = 0, discount = 20)
   @total = total

   @discount = discount
 end

 def add_item(item, price, qty = 1)
   @price = price
   @qty = qty
   @total += @price * @qty
 end

 def apply_discount
   if @discount != 0
    self.total += (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to #{@total}."
   else
     "There is no discount to apply."
    #  discount = (@discount.to_f/100)
    #  total_discount = (@total.to_f * discount)
    #  @total = @total.to_f - total_discount
    #  return "After the discount, the total comes to #{@total}."
   end
 end

end
