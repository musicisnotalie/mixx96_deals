require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  FactoryGirl.create(:merchant)

  should validate_uniqueness_of(:name)

  should validate_presence_of(:name)
  should validate_presence_of(:logo)

  should validate_presence_of(:address)
  should validate_presence_of(:city)
  should validate_presence_of(:state)
  should validate_presence_of(:zip)

  should ensure_length_of(:state).is_at_least(2).is_at_most(2)
 
  should validate_uniqueness_of(:email) 
  should_not allow_value("blah").for(:email)
  should allow_value("a@b.com").for(:email)

  should have_many(:deals)
  should have_many(:coupons)
end
