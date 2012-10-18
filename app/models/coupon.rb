class Coupon < Offer
  #validations
  validates :name,
  	:presence => true,
  	:uniqueness => true
  	
  validates_presence_of :description, :expiration_date, :image, :tagline, :merchant

  #mass_assignment
  attr_accessible :description, :expiration_date, :name, :printable_file, :merchant_id, :category_ids, :image, :image_cache, :tagline, :start_date, :end_date
  
  mount_uploader :printable_file, FileUploader
end
