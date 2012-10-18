class Ad < Offer
  #validations
  validates_presence_of :name, :tagline, :description, :end_date, :start_date, :merchant
  validates_uniqueness_of :name

  #mass-assigment
  attr_accessible :name, :tagline, :description, :start_date, :end_date, :quantity, :image, :merchant_id, :category_ids, :image_cache, :featured, :priority
end