require 'test_helper'

class CouponTest < ActiveSupport::TestCase
	FactoryGirl.create(:coupon)
	should validate_uniqueness_of(:name)
	should validate_presence_of(:name)
	should validate_presence_of(:description)
	should validate_presence_of(:expiration_date)

	should belong_to(:merchant)

	should have_many(:categorizations)
	should have_many(:categories).through(:categorizations)
end
