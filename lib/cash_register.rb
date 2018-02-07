
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
     discount = (@discount/100)
    total_discount = (@total * discount)
    @total = @total - total_discount
    "After the discount, the total comes to #{@total}."
   else
     "There is no discount to apply."

    # return "After the discount, the total comes to #{@total}."
   end
 end

end
