ActiveAdmin.register Order do
  scope :completed, :default => true
  scope :incomplete
  scope :all

  filter :number
  filter :merchants
  filter :deal


  index do
    column :number
    column :last_name
    column :first_name
    column :deal
    column :merchant
    column :price do |order|
      number_to_currency(order.transactions.last.amount/100)
    end
  end
end
