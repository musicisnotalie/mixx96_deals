class AddTaglineandImagetoCoupons < ActiveRecord::Migration
  def up
  	add_column :coupons, :tagline, :string
  	add_column :coupons, :image, :string
  end

  def down
  	remove_column :coupons, :tagline
  	remove_column :coupons, :image
  end
end
