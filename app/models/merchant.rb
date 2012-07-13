class Merchant < ActiveRecord::Base
	#relationships
	has_many :deals
	has_many :coupons
	has_many :categorizations
	has_many :categories, :through => :categorizations
	#validations
	validates_uniqueness_of :name
	validates_presence_of :name, :address, :city, :state, :zip, :logo
	validates_length_of :state, :minimum => 2, :maximum => 2

	validates :email,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

	#mass-assignment
  attr_accessible :address, :address2, :city, :email, :homepage, :logo, :map_link, :name, :phone_number, :state, :zip, :category_ids
  
  # uploaders
  mount_uploader :logo, LogoUploader
end
