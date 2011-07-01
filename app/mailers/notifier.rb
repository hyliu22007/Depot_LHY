class Notifier < ActionMailer::Base
  default :from => "hyliu22007@163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_received.subject
  #
  def order_received
    @greeting = "Hi"

    mail :to => "hyliu22010@qq.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.order_shipped.subject
  #
  def order_shipped
    @greeting = "Hi"

    mail :to => "hyliu22010@qq.com"
  end
  
  def order_received(order)
    @order = order
    mail :to => order.email, :subject => 'Pragmatic Store Order Confirmation'
  end
  
end
