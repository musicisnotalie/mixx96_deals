require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
	FactoryGirl.create(:category)
	should validate_presence_of(:name)
	should validate_uniqueness_of(:name)
	
	should have_many(:categorizations)
	should have_many(:deals).through(:categorizations)
	should have_many(:coupons).through(:categorizations)
	should have_many(:merchants).through(:categorizations)
end
