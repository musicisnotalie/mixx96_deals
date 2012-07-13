class Deal < ActiveRecord::Base
  #relationships
  belongs_to :merchant
 	has_many :categorizations
  has_many :categories, :through => :categorizations

  #validations
  validates_presence_of :name, :tagline, :description, :normal_price, :price, :sale_end_date, :deal_expiration_date, :image, :merchant
  validates_uniqueness_of :name
  validates_numericality_of :normal_price, :price, :quantity

  #mass-assigment
  attr_accessible :name, :tagline, :description, :normal_price, :price, :sale_end_date, :deal_expiration_date, :quantity, :image, :merchant_id, :category_ids
  
  # uploader
  mount_uploader :image, ImageUploader
  
  #scopes
  scope :recent, limit(5)
end
