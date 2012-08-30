ActiveAdmin.register Order do
  scope :complete, :default => true
  scope :incomplete
  scope :all

  filter :merchants
  filter :deal


  index do
    column :last_name
    column :first_name
    column :deal
    column :merchant
    column :price do |order|
      number_to_currency(order.transaction.amount/100)
    end
  end
end
