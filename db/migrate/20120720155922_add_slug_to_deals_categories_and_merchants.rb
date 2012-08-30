class AddSlugToDealsCategoriesAndMerchants < ActiveRecord::Migration
  def change
  	add_column :deals, :slug, :string
  	add_column :coupons, :slug, :string
  	add_column :merchants, :slug, :string
  	add_column :categories, :slug, :string

  	add_index :deals, :slug, unique: true
  	add_index :coupons, :slug, unique: true
  	add_index :merchants, :slug, unique: true
  	add_index :categories, :slug, unique: true
  end
end
