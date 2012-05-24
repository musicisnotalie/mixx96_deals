class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
	    t.references :category, :deal, :coupon, :merchant
      t.timestamps
    end
  end
end
