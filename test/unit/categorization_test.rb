require 'test_helper'

class CategorizationTest < ActiveSupport::TestCase
	FactoryGirl.create(:categorization)

	should belong_to(:merchant)
	should belong_to(:deal)
	should belong_to(:coupon)
	should belong_to(:category)
end
