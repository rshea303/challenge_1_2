class Dashboard
  attr_reader :order

  def initialize(order)
    @order = order
  end

  def user_name
    User.find(order.user_id).name
  end

  def user_email
    User.find(order.user_id).email
  end

  def item_name
    order.items.first.name
  end

  def item_description
    order.items.first.description
  end

  def item_image
    order.items.first.image_url
  end
end
