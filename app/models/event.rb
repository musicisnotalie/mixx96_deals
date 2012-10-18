class Event < Offer
  #validations
  validates_presence_of :name, :tagline, :description, :end_date, :start_date, :merchant
  validates_uniqueness_of :name

  #accessible attributes
  attr_accessible :merchant_id, :image, :image_cache, :featured, :priority, :name, :tagline, :description, :start_date, :end_date
end