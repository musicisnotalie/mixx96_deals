class AddFieldsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :ip_address, :string
    add_column :orders, :card_type, :string
    add_column :orders, :card_expires_on, :date
    add_column :orders, :first_name, :string
    add_column :orders, :last_name, :string
  end
end
