class Order < ActiveRecord::Base
	#relationships
	belongs_to :deal
	belongs_to :user

  attr_accessible :address, :address2, :city, :state, :zip
end
