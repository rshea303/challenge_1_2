class OrderMailer < ExampleMailer
  def order_email(order)
    @dashboard = Dashboard.new(order)
    mail(to: 'storedom-overlord@example.com', subject: 'New Order')
  end
end
