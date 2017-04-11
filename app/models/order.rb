class Order < ActiveRecord::Base
  has_many :order_items
  def total
   @subtotal
  end
end
