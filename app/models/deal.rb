class Deal < ActiveRecord::Base
  #relationships
  belongs_to :merchant

  #validations
  validates_presence_of :name, :tagline, :description, :normal_price, :deal_price, :sale_end_date, :deal_expiration_date
  validates_uniqueness_of :name
  validates_numericality_of :normal_price, :deal_price, :quantity

  #mass-assigment
  attr_accessible :deal_expiration_date, :deal_price, :description, :merchant_id, :name, :normal_price, :quantity, :sale_end_date, :tagline
end
