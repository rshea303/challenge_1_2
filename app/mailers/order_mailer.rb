class OrderMailer < ExampleMailer
  def order_email(order)
    mail(to: 'storedom-overlord@example.com', subject: 'New Order')
  end
end
