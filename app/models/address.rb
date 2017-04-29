class Address < ActiveRecord::Base
  belongs_to :user
  has_many :orders
  validates :line1, :city, :state, :zip, presence: true
  validates :zip, numericality: {only_integer: true}, length: { is: 5 }
  validates :state, length: { is: 2 }
  def to_s
      [line1, city].compact.join(', ')
  end
end
