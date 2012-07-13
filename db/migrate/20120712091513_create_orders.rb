class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :address2
      t.string :city
      t.string :state, :limit => 2
      t.string :zip
      t.references :user, :deal
      t.timestamps
    end
  end
end
