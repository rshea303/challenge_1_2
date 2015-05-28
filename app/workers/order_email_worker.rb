class OrderEmailWorker
  include Sidekiq::Worker

  def perform(order)
    OrderMailer.order_email(order).deliver
  end
end
