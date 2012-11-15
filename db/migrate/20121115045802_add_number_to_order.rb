class AddNumberToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :number, :string, :limit => 15
  end
end
