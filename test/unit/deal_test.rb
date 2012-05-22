require 'test_helper'

class DealTest < ActiveSupport::TestCase
	Factory(:deal)

	should validate_uniqueness_of(:name)
	should validate_presence_of(:name)

	should validate_presence_of(:tagline)
	should validate_presence_of(:description)
    
  should validate_presence_of(:normal_price)
  should validate_numericality_of(:normal_price)

  should validate_presence_of(:deal_price)
  should validate_numericality_of(:deal_price)

  should validate_numericality_of(:quantity)

  should validate_presence_of(:sale_end_date)
  should validate_presence_of(:deal_expiration_date)

  should belong_to(:merchant)
  should have_many(:orders)
end
