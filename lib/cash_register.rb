
class CashRegister
  attr_accessor :total, :discount, :item


  def initialize(discount = 0)
   @total = 0
   @discount = discount
   @items =[]
 end

 def add_item(item, price, qty = 1)
   @total += price * qty
   @items << item
 end

 def apply_discount
   if @discount != 0
    @total = (@total.to_f - @total*discount/100.0).to_i
    "After the discount, the total comes to #{@total}."
   else
     "There is no discount to apply."
   end
 end

end
