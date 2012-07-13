# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess if Rails.env.test?
FactoryGirl.define do
  factory :coupon do |c|
    c.name "MyString"
    c.description "MyText"
    c.printable_file "MyString"
    c.tagline "MyTagline"
    c.image {fixture_file_upload('test/fixtures/files/mekong.jpg', 'image/jpg')}
    c.expiration_date "2012-05-22 01:47:17"
   	c.association :merchant
  end
end