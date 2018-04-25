require 'pry'

class CashRegister

attr_accessor :total, :discount, :item, :price, :quantity, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []

  end

  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    @items << title
  end

  def apply_discount
    if discount != 0
      discount_percent = discount/100.to_f
      discount_amount = self.total.to_f * discount_percent
      discount_total = (self.total.to_f - discount_amount).to_i
      self.total = discount_total
      "After the discount, the total comes to $#{discount_total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items

  end

end
