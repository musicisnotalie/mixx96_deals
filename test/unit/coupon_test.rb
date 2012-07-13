require 'test_helper'

class CouponTest < ActiveSupport::TestCase
	FactoryGirl.create(:coupon)
	
	should have_many(:categorizations)
	should have_many(:categories).through(:categorizations)

	should belong_to(:merchant)

	should validate_uniqueness_of(:name)

	should validate_presence_of(:name)
	should validate_presence_of(:tagline)
	should validate_presence_of(:image)
	should validate_presence_of(:description)
	should validate_presence_of(:tagline)
	should validate_presence_of(:image)
	should validate_presence_of(:expiration_date)
	should validate_presence_of(:merchant)
	

	
end
