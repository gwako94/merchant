class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order_id, :product_id, presence: true
  def subtotal
    self.quantity * self.product.price
  end
end
