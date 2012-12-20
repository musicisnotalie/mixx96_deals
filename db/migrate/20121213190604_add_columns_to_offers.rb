class AddColumnsToOffers < ActiveRecord::Migration
  def change
      add_column :offers, :name, :string
      add_column :offers, :description, :text
      add_column :offers, :tagline, :string
      add_column :offers, :normal_price, :decimal, :precision => 8, :scale => 2
      add_column :offers, :price, :decimal, :precision => 8, :scale => 2
      add_column :offers, :quantity, :integer
      add_column :offers, :start_date, :datetime
      add_column :offers, :end_date, :datetime
      add_column :offers, :expiration_date, :datetime
      add_column :offers, :type, :string
      add_column :offers, :image, :string
      add_column :offers, :merchant_id, :integer
      add_column :offers, :printable_file, :string
      add_column :offers, :deleted_at, :datetime
      add_column :offers, :created_at, :datetime
      add_column :offers, :updated_at, :datetime
  end
end
