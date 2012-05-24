class Deal < ActiveRecord::Base
  #relationships
  belongs_to :merchant
 	has_many :categorizations
  has_many :categories, :through => :categorizations

  #validations
  validates_presence_of :name, :tagline, :description, :normal_price, :price, :sale_end_date, :deal_expiration_date
  validates_uniqueness_of :name
  validates_numericality_of :normal_price, :price, :quantity
  validates_associated :merchant

  #mass-assigment
  attr_accessible :deal_expiration_date, :deal_price, :description, :name, :normal_price, :quantity, :sale_end_date, :tagline
end
