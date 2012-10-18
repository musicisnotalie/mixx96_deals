class Deal < Offer
  #validations
  validates_presence_of :name, :tagline, :description, :normal_price, :price, :end_date, :expiration_date, :image, :merchant
  validates_uniqueness_of :name
  validates_numericality_of :normal_price, :price, :quantity

  #mass-assigment
  attr_accessible :name, :tagline, :description, :normal_price, :price, :start_date, :end_date, :expiration_date, :quantity, :image, :merchant_id, :category_ids, :image_cache, :featured, :priority
  
  #scopes
  scope :recent, limit(5)
end
