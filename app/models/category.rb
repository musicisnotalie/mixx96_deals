class Category < ActiveRecord::Base
	#relationships
	has_many :categorizations
	has_many :merchants, :through => :categorizations
	has_many :deals, :through => :categorizations
	has_many :coupons, :through => :categorizations
	
	#validations
	validates :name, :presence => true, :uniqueness => true
	
	#mass-assignment
	attr_accessible :name
end
