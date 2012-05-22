class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :tagline
      t.text :description
      t.decimal :normal_price, precision: 8, scale: 2
      t.decimal :deal_price, precision: 8, scale: 2
      t.integer :quantity
      t.datetime :sale_end_date
      t.datetime :deal_expiration_date
      t.integer :merchant_id

      t.timestamps
    end

    add_index :deals, :merchant_id
  end
end
