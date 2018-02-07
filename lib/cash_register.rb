# 
# class CashRegister
#   attr_accessor :total, :discount, :price, :qty
# 
# 
#   def initialize(total = 0, discount = 20)
#    @total = total
# 
#    @discount = discount
#  end
# 
#  def add_item(item, price, qty = 1)
#    @price = price
#    @qty = qty
#    @total += @price * @qty
#  end
# 
#  def apply_discount
#    puts @discount
#    if @discount != 0
#      discount = (@discount.to_f/100)
#     total_discount = (@total * discount)
#     @total = @total - total_discount
#     "After the discount, the total comes to #{@total}."
#    else
#      "There is no discount to apply."
# 
#     # return "After the discount, the total comes to #{@total}."
#    end
#  end
# 
# end
class CashRegister

  attr_accessor :items, :discount, :total, :last_transaction

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do
      items << title
    end
    self.last_transaction = amount * quantity
  end

  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end
end








