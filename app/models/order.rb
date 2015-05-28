class Order < ActiveRecord::Base
  belongs_to :user

  has_many :order_items
  has_many :items, through: :order_items

  def create_order_item(item_id)
    OrderItem.create(item_id: item_id)
  end
end
