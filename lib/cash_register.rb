class CashRegister 
  attr_accessor :discount, :items, :last_transaction_amount, :total

  def initialize(discount = 0)
    @items = []
    @discount = discount
    @total = 0 
  end 
  
  def add_item(cost, name, number = 1)
    self.total = cost * number
    @items << name
  end
  
  def add_item_2(cost, name, number = 1)
    self.total = cost * number

  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  
  
end