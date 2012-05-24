class Categorization < ActiveRecord::Base
	#relationship
	belongs_to :category
	belongs_to :merchant
	belongs_to :deal
	belongs_to :coupon
end
