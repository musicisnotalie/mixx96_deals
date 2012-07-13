# Read about factories at https://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess if Rails.env.test?
FactoryGirl.define do
  factory :deal do
    name "MyString"
    tagline "MyString"
    description "MyText"
    normal_price 1.5
    price 1.5
    quantity 1
    image {fixture_file_upload('test/fixtures/files/mekong.jpg', 'image/jpg')}
    sale_end_date "2012-05-22 00:16:01"
    deal_expiration_date "2012-05-22 00:16:01"
    merchant 1
  end
end