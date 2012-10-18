class UpdateCategorizations < ActiveRecord::Migration
  def up
    remove_column :categorizations, :deal_id
    remove_column :categorizations, :coupon_id
    add_column :categorizations, :offer_id, :integer
  end

  def down
    add_column :categorizations, :deal_id, :integer
    add_column :categorizations, :coupon_id, :integer
    remove_column :categorizations, :offer_id
  end
end
