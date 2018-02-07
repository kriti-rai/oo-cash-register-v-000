
class CashRegister
  attr_accessor :total, :discount, :price, :qty


  def initialize(discount = 0)
   @total = 0

   @discount = discount
 end

 def add_item(item, price, qty = 1)
   @price = price
   @qty = qty
   @total += @price * @qty
 end

 def apply_discount
   puts @discount
   if @discount != 0
     discount = (@discount.to_f/100)
    total_discount = (@total * discount)
    @total = @total - total_discount
    "After the discount, the total comes to #{@total}."
   else
     "There is no discount to apply."

    # return "After the discount, the total comes to #{@total}."
   end
 end

end
