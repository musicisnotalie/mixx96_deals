class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :name
      t.text :description
      t.string :printable_file
      t.datetime :expiration_date
      t.integer :merchant_id

      t.timestamps
    end

    add_index :coupons, :merchant_id
  end
end
