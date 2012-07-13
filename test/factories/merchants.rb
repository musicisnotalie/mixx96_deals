# Read about factories at https://github.com/thoughtbot/factory_girl

include ActionDispatch::TestProcess if Rails.env.test?

FactoryGirl.define do
  factory :merchant do |m|
    m.name "Joe's Muffler Shop"
    m.address "123 A St."
    m.address2 ""
    m.city "Olympia"
    m.state "WA"
    m.zip "98501"
    m.logo {fixture_file_upload('test/fixtures/files/mekong.jpg', 'image/jpg')}
    m.phone_number "1234567890"
    m.email "joe@joesmufflershop.com"
    m.homepage "http://joesmufflershop.com"
    m.map_link "http://google.com/map/joesmufflershop"
    m.association :coupon
  end
end
