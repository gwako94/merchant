class Order < ActiveRecord::Base
  belongs_to :Address
  has_many :order_items, dependent: :destroy
  def total
   sum = 0
   order_items.each do |item|
     sum = sum + (item.quantity*item.product.price)
   end
   sum
  end
end
