class OrderMailer < ActionMailer::Base
  default from: "mixxmall@mixx96.com"

  def order_confirmation(user, order)
    @user = user
    @order = order
    mail(:to => user.email, :subject => "MixxMall Order Confirmation")
  end
end
