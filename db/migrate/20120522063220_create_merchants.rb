class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state, :limit => 2
      t.string :zip
      t.string :logo
      t.string :phone_number
      t.string :email
      t.string :homepage
      t.text :map_link

      t.timestamps
    end
  end
end
